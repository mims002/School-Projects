#include <stdio.h>
#include <stdlib.h>

#include "memory.h"

extern mem_ptr Heap;

mem_rec *free_seg_lists;
int number_of_Lists;

mem_rec *best_fit(int size){

	int i;
	for(i=0; i<number_of_Lists; i++){
		//creats a pointer to the sets head
		mem_ptr free_space = &free_seg_lists[i];

		//finds the appropriate set
		if(free_space->range[1] >= size ){
			//looks for free space in that set
			while(free_space->next != NULL){
				if(free_space->next->size>= size){
					return free_space;
				}
				//advances the pointer
				free_space = free_space->next;
			}
		}

	}return NULL;
}

mem_rec *split(mem_rec *fs, size_t size) {

	mem_ptr saved = fs->next;
	mem_ptr freed = (mem_ptr)malloc(sizeof(mem_rec));

	freed->address = fs->next->address;
	freed->size = size;
	fs->next->address += size;
	fs->next->size -=size;
	//if the size becomes too small then it removes from
	//segregated list class
	if(fs->next->size  < fs->next->range[0]){

		if(fs->next->next != NULL)
			fs->next = fs->next->next;
		else
			fs->next = NULL;
		//if the whole block is needed then the pointer is removed and returned
		if(saved->size == size)
			return saved;
	}else return freed;

	//if after splitting the size of the free memory is to small for its
	//class its placed into a new one
	mm_free(saved);
	return freed;
 }

mem_ptr mm_malloc(int size) {
  /* Input: size of the block needed
     Output: Return a pointer to a mem_rec of the appropriate size (new_size).

     The function should identify the smallest nominal size segregated list that is
     potentially large enough to satisfy the new request. Within that
     segregated list, the block will be identified using the first-fit
     heuristic.

     If that segregated list does not have any free block
     that can accommodate the request, the segregated list of the next
     largest size should be checked, and so on.

     If none of the
     segregated lists has place for the block of the given size, call
     error_msg(1) and return a NULL pointer
  */
	size = ALIGN(size);
	mem_ptr free_space = best_fit(size);

	if(free_space == NULL){

		error_msg(1);
		return NULL;
	}else free_space=split(free_space, size);

	return free_space;


}

