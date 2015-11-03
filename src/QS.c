#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <time.h>
#include <math.h>
#include "StructPlus.h"
#include "ParseCommandLine.h"
#include <stdint.h>

#define F 1

/**
 * Driver that evaluates test instances using the StructPlus
 * implementation. Use the following command to run this driver:
 *
 * ./StructPlus -ensemble <ensemble-path> -instances <test-instances-path> \
 *              -maxLeaves <max-number-of-leaves> [-print]
 *
 */
typedef struct QSNode QSNode;
typedef uint8_t Byte;

struct QSNode {
  float threshold;
  unsigned int tree_id;
  Byte* bitvector; // how many bytes are determined by maxNumberOfLeaves
};

int nbTrees;
int maxNumberOfLeaves;
int numberOfFeatures;
int numberOfInstances;
StructPlus** trees; 
float** features;

// QS parameters
double* leaves;

void read_ensemble(char* configFile);
void read_features(char* featureFile);

int leavesCount;

void traverse_tree(StructPlus* tree, int treeId)
{
  if (tree->left == NULL && tree->right == NULL) // leaf node 
    leaves[leavesCount++] = tree->threshold;
  else if (tree->left == NULL && tree->right != NULL) // only has right child
  {
    printf("Error in traverse_tree! There is a node in Tree %d only has right child", treeId);
    exit(1);
  }
  else if (tree->left != NULL && tree->right == NULL) // only has left child
  {
    printf("Error in traverse_tree! There is a node in Tree %d only has left child", treeId);
    exit(1);
  }
  else // node has both left and right child
  {
    traverse_tree(tree->left, treeId);
    traverse_tree(tree->right, treeId);
  }
}

void gen_QS()
{
  //leaves
  leaves = (double *) malloc(maxNumberOfLeaves * nbTrees * sizeof(double));
  
  int i;
  leavesCount = 0;
  for (i=0; i<nbTrees; i++)
    traverse_tree(trees[i], i);
  printf("Finish saving leaves. There are %d leaves.", leavesCount);
}

int main(int argc, char** args) {
  if(!isPresentCL(argc, args, (char*) "-ensemble") ||
     !isPresentCL(argc, args, (char*) "-instances") ||
     !isPresentCL(argc, args, (char*) "-maxLeaves")) {
    return -1;
  }

  char* configFile = getValueCL(argc, args, (char*) "-ensemble");
  char* featureFile = getValueCL(argc, args, (char*) "-instances");
  maxNumberOfLeaves = atoi(getValueCL(argc, args, (char*) "-maxLeaves"));
  int printScores = isPresentCL(argc, args, (char*) "-print");

  // Read ensemble
  read_ensemble(configFile);
  // Read instances (SVM Light format)
  read_features(featureFile);
  // Generate essential QS data structures
  gen_QS();
  // Compute scores for instances using QS algorithm

  
  // Free used memory
  int tindex, i;
  for(tindex = 0; tindex < nbTrees; tindex++) {
    destroyTree(trees[tindex]);
  }
  free(trees);
  for(i = 0; i < numberOfInstances; i++) {
    free(features[i]);
  }
  free(features);
  free(leaves);
  return 0;
}

// Read ensemble
void read_ensemble(char* configFile)
{
  FILE *fp = fopen(configFile, "r");
  fscanf(fp, "%d", &nbTrees);

  // Array of pointers to tree roots, one per tree in the ensemble
  trees = (StructPlus**) malloc(nbTrees * sizeof(StructPlus*));
  int tindex = 0;

  // Number of nodes in a tree does not exceed (maxLeaves * 2)
  int maxTreeSize = 2 * maxNumberOfLeaves;
  long treeSize;

  for(tindex = 0; tindex < nbTrees; tindex++) {
    fscanf(fp, "%ld", &treeSize);

    trees[tindex] = createNodes(maxTreeSize);

    char text[20];
    long line = 0;
    fscanf(fp, "%s", text);
    while(strcmp(text, "end") != 0) {
      long id;
      fscanf(fp, "%ld", &id);

      // A "root" node contains a feature id and a threshold
      if(strcmp(text, "root") == 0) {
        int fid;
        float threshold;
        fscanf(fp, "%d %f", &fid, &threshold);
        setRoot(trees[tindex], id, fid, threshold);
      } else if(strcmp(text, "node") == 0) {
        int fid;
        long pid;
        float threshold;
        int leftChild = 0;
        // Read Id of the parent node, feature id, subtree (left or right),
        // and threshold
        fscanf(fp, "%ld %d %d %f", &pid, &fid, &leftChild, &threshold);

        // Find the parent node, based in parent id
        int parentIndex = 0;
        for(parentIndex = 0; parentIndex < maxTreeSize; parentIndex++) {
          if(trees[tindex][parentIndex].id == pid) {
            break;
          }
        }
        // Add the new node
        if(trees[tindex][parentIndex].fid >= 0) {
          addNode(trees[tindex], parentIndex, line, id, leftChild, fid, threshold);
        }
      } else if(strcmp(text, "leaf") == 0) {
        long pid;
        int leftChild = 0;
        float value;
        fscanf(fp, "%ld %d %f", &pid, &leftChild, &value);

        int parentIndex = 0;
        for(parentIndex = 0; parentIndex < maxTreeSize; parentIndex++) {
          if(trees[tindex][parentIndex].id == pid) {
            break;
          }
        }
        if(trees[tindex][parentIndex].fid >= 0) {
          addNode(trees[tindex], parentIndex, line, id, leftChild, 0, value);
        }
      }
      line++;
      fscanf(fp, "%s", text);
    }
    // Re-organize tree memory layout
    trees[tindex] = compress(trees[tindex]);
  }
  fclose(fp);
}

// Read instances (SVM Light format)
void read_features(char* featureFile)
{
  FILE* fp = fopen(featureFile, "r");
  fscanf(fp, "%d %d", &numberOfInstances, &numberOfFeatures);
  int divisibleNumberOfInstances = numberOfInstances;
  while(divisibleNumberOfInstances % F !=0)
    divisibleNumberOfInstances++;
  features = (float**) malloc(divisibleNumberOfInstances * sizeof(float*));
  int i = 0; int j=0;
  for(i = 0; i < divisibleNumberOfInstances; i++) {
    features[i] = (float*) malloc(numberOfFeatures * sizeof(float));
  }

  float fvalue;
  int fIndex = 0, iIndex = 0;
  int ignore;
  char text[20];
  char comment[1000];
  for(iIndex = 0; iIndex < numberOfInstances; iIndex++) {
    fscanf(fp, "%d %[^:]:%d", &ignore, text, &ignore);
    for(fIndex = 0; fIndex < numberOfFeatures; fIndex++) {
      fscanf(fp, "%[^:]:%f", text, &fvalue);
      features[iIndex][fIndex] = fvalue;
    }
    fscanf(fp, "%[^\n]", comment);
  }
  fclose(fp);
}

