#include <stdio.h>
#include <stdlib.h>

#include "memory.h"

extern mem_ptr Heap;

mem_rec *free_seg_lists;
int number_of_Lists;
mem_ptr mm_realloc(mem_ptr m, int size) {
  /* Input: pointer to a mem_rec, new size of the block needed
     Output: 
       If the input pointer is null, call error_msg(2) and return

       Return a pointer to a mem_rec of the appropriate size (new_size).
       This block should be chosen as follows:
          if the new size is less than the current size of the block, 
            use the current block after moving the excess back to the appropriate segregated free
            list. 

          if the new block size is larger than the current size, 
            first see if there is enough space after the current block
              to expand (possibly using the neighboring free block). 
              Any excess partial free block that may result should be put to the appropriate segregated list.
           
          If this will not work either, you will need to free the current block by calling mm_free(),  
              and find a location for the requested larger block using mm_alloc(). 
 
 
       If there is nowhere to place a block of the given size, 
          call error_msg(1) and return a NULL pointer.

       Remember that the free blocks in each segregated list must be address-ordered at all times.      

  */
	size = ALIGN(size);
	//find the largest possible free block after the given memory pointer address
	//checks multiple times if it was able to coalesce
	if(m==NULL)
		return NULL;

	while(!m->size>=size && coalescence(m));

	if(m->size>size){
		mem_ptr free_space = (mem_ptr)malloc(sizeof(mem_rec));
		free_space->size = m->size - size;
		free_space->address = m->address + size;
		mm_free(free_space);
		m->size = size;
	}

	if(m->size<size){
		mm_free(m);
		mem_ptr free_space = mm_malloc(size);
		if(free_space==NULL)
			return NULL;

		return free_space;
	}
	//if m is >= size return m
	return m;

}

//checks is there is adjacent space available for inserting
int coalescence2 (mem_ptr toBeEnlightened){
	//goes through each free list to see if the block can be added next it
	//if it can be added next to it then the whole block is removed and
	//returned if not then it returns null
	int posEnd = toBeEnlightened->address+toBeEnlightened->size;

	int i;
	for(i =0; i<number_of_Lists; i++){
		mem_ptr al = &free_seg_lists[i];

		//checks before each free block
		while(al->next!=NULL){

			//insert before only
			if(posEnd == al->next->address){
				toBeEnlightened->size += al->next->size;

				//removes the current free list because it is part of
				//toBeEnlightened. returns it to be added to the appropiate free list
				if(al->next->next != NULL){
					al->next = al->next->next;
				}else
					al->next = NULL;
				return 1;
			}
			al = al->next;
		}
	}
	return 0;
}
