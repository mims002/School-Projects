#include <stdio.h>
#include <stdlib.h>
#include "memory.h"

// ***********************************************************
// 
//  This file holds the main driver program responsible for opening and
//   reading the trace files.  It will call the appropriate function and
//   store the returned value in the allocs[] array.
//
// It contains the mm_init() function which initializes the heap and the mm_dump() routine 
// that prints out the contents of memory (free blocks only) when needed. 
//  Those two functions are currently implemented assuming a single free list -- 
// you will need to modify them for your segregated list implementation.  
//
// You will need to                                                                                                                                     
// write the get_seglist_info() function which is currently empty -- see below-- 
// and possibly define a few additional data structures that you might need. 
// You will also need to uncomment the line that prints the value of the "probes" variable
// once you update the mm_malloc function to keep track of the variable "probes".

// But do NOT delete or MODIFY other existing parts, or your program may not work // properly.

// It contains an error function to output the associated messages.  
// ***********************************************************

#define MAX_INDEX 10000
#define DEBUG 0


mem_rec *free_seg_lists;

int number_of_Lists;
int *range;

static mem_ptr allocs[MAX_INDEX];
// The allocs array is what ties a numbered allocation to an area of memory.
// It is manipulated and accessed in the "while(fscanf()" loop below to process 
// the entries in trace input files. Normally you should not need to access this array 
// in your own code.

int probes = 0; 
  // The number of free blocks visited during the mm_malloc calls

extern mem_ptr mm_malloc(int),mm_realloc(mem_ptr,int);
extern void mm_free(mem_ptr),mm_dump(); 


main(int argc, char**argv) {
// The program expects that name of the trace file on the command line
    FILE *f;
    int num,i;
    if (argc != 2) {
      printf("Usage: %s trace_file\n",argv[0]);
      exit(2);
    }

     
    //get the information about the segregated lists 
    if(!DEBUG) get_seglist_info();
    else {
    	number_of_Lists = 5;

    }
     //open and process the trace file  
    if (f = fopen(argv[1],"r"))  {   
      int op; int index, size;
      init_driver();
      mm_init();
      //
      // process the trace file one line at a time
      while (fscanf(f,"%d %d %d",&op,&index,&size)) {
         if (op == 1) { if(DEBUG) printf("\n\nmalloc size: %d", size);if (index >= MAX_INDEX) printf("Illegal index in input file\n"); else
                     allocs[index] = mm_malloc(size); }
         else if (op == 2) {if(DEBUG) printf("\n\nfree size: %d", size);if (index >= MAX_INDEX) printf("Illegal index in input file\n"); else
                     mm_free(allocs[index]);allocs[index]=NULL;}
	 else if (op == 3) {if(DEBUG) printf("\n\nrealloc size: %d", size);if (index >= MAX_INDEX) printf("Illegal index in input file\n"); else
                     allocs[index] = mm_realloc(allocs[index],size); }
         else if (op == 4)  {mm_dump();}
         else if (op == 5)  {mm_dump(); alloc_dump();}
         else if (op == 0) { fclose(f); 
			    //   printf("Total number of visited free nodes:%d\n", probes);
                            exit(1);}
	
      
      } 

    } else {printf("Unknown trace file\n");
           printf("Usage: %s trace_file\n",argv[0]);
           exit(2);
		}

    }



 void get_seglist_info()
{
  /* The function get_seglist_info() must interact with the user to
get the information about the number and sizes of the individual
segregated lists. See the hand-out for details. Specify the return
type and parameter(s) of the function as needed.  Think of
constructing an array of pointers, where each element points to a
separate segrageted list.
  */

  printf("Enter segregated list info: ");
  scanf("%d",&number_of_Lists);

  range = malloc(sizeof(int)*number_of_Lists*2);

  int i;

  for(i = 0; i< number_of_Lists*2; i++){
	scanf("%d",&range[i]);
  }

} 


/* init function  */
mm_init() {
  /* This function  initializes the heap. The code segment below 
    makes that initialization assuming a single free list.
    You may need to modify this function to initialize all segregated lists properly. 
  */ 

	//intitializes the head pointers 
   free_seg_lists = (mem_rec*)malloc(sizeof(mem_rec)*number_of_Lists);
   //initializes the head of each free list with the appropriate range
   int i;
   for(i=0; i<number_of_Lists;i++){
		free_seg_lists[i].size = -1;
		free_seg_lists[i].range[0] = range[2*i];
		free_seg_lists[i].range[1] = range[2*i+1];
		free_seg_lists[i].address = -1;

   }


   free_seg_lists[number_of_Lists-1].range[1] = HEAPSIZE;
   //creates the first free space
   free_seg_lists[number_of_Lists-1].next = (mem_rec*)malloc(sizeof(mem_rec));
   free_seg_lists[number_of_Lists-1].next->address=0;
   free_seg_lists[number_of_Lists-1].next->size = HEAPSIZE;
   free_seg_lists[number_of_Lists-1].next->range[1]= HEAPSIZE;
   free_seg_lists[number_of_Lists-1].next->range[0]= free_seg_lists[number_of_Lists-1].range[0];



}

void printAll(){
	int i;
	printf("\nMemory Information\n");
	for(i=0; i<number_of_Lists; i++){
		printf("List %d: \n", i+1);
		//print_rec(&free_seg_lists[i]);
		mem_ptr iter = &free_seg_lists[i];
		while(iter->next!=NULL){
			printf("\tFree Blocks- ");
			print_rec(iter->next);
			iter = iter->next;
		}
	}printf("--------------------\n");
}
void print_rec(mem_rec *record){
	printf("Address: %05d Range: %05d-%05d Size: %05d\n",record->address,record->range[0],record->range[1],record->size);
}
void mm_dump() {
  /* Output the contents of memory.  The function below simply walks
  through memory via the 'next' pointer and prints out the information
  associated with that node -- it assumes a SINGLE free list.  You
  will need to modify this function to output the contents of the
  memory with MULTIPLE segregated lists. As you can see from the
  example trace outputs, the free blocks must be printed in strictly
  increasing address order.
   */ 
	printAll();
	int i;
	printf("Free blocks in Memory: \n");
	for(i=0; i<number_of_Lists; i++){

		mem_ptr t = &free_seg_lists[i];
		while(t->next!=NULL){
			printf("%5d: size = %-5d \n",t->next->address,t->next->size);
			t= t->next;
		}
	}
   printf("\n");
}

// output what is in the allocation array

alloc_dump() {
   int i;
   printf("Allocated Blocks: \n");
   for (i=0;i<MAX_INDEX;i++) 
        if (allocs[i]) 
	  printf("\tBlock %d: Address: %d  Size: %d\n",i,allocs[i]->address, allocs[i]->size); 
printf("\n");
    
}



error_msg(int which) {
   switch (which) {
        case 1:
        printf("ERROR: Insufficient heap space for desired allocation\n");
        break;
        case 2:
        printf("ERROR: Cannot free NULL pointer\n");
        break;

   }
}

init_driver() {
   int i;
   for (i=0;i<MAX_INDEX;i++) 
        allocs[i] = NULL;
}
