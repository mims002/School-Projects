#include <stdlib.h>

#include "memory.h"

extern mem_ptr Heap;

mem_rec *free_seg_lists;
int number_of_Lists;

void mm_free(mem_ptr m) {
  /* Input: pointer to a mem_rec 

     Output:  None

        You must coalesce this block with adjacent blocks if
        appropriate. The new free block (if possible, coalesced with
        the neighbors) must be added to the appropriate segregated
        list. The appropriate segregated list is defined as the
        smallest nominal size list that is still large enough to hold
        the new free block.

	Before returning from mm_free, make sure that all free blocks, in all
	segregated lists, are address-ordered (lower addresses first).

	If the input pointer is null, call error_msg(2) and return.  
  */

	if(m == NULL) {error_msg(2); return;}
	//keep trying to coalesce so the largest size of free adjacent block is produced
	while(coalescence (m));
	//inserts the free block to its appropriate free list
	int i;
	for(i =number_of_Lists-1; i>=0; i--){
		if(free_seg_lists[i].range[0] <= m->size ){
			mem_ptr al = &free_seg_lists[i];
			//inserts in order of its address
			while(al->next!=NULL && al->next->address<m->address ){
				al = al->next;
			}
			//adds the next free node if it exists
			if(al->next != NULL)
				m->next = al->next;
			else
				m->next= NULL;
			al->next = m;
			//puts the new range in
			m->range[0]=free_seg_lists[i].range[0];
			m->range[1]=free_seg_lists[i].range[1];
			break;
		}
	}


}
//checks is there is adjacent space available for inserting
int coalescence (mem_ptr toBeEnlightened){
	//goes through each free list to see if the block can be added next it
	//if it can be added next to it then the whole block is removed and
	//returned if not then it returns null
	int posEnd = toBeEnlightened->address+toBeEnlightened->size;
	int posBen = toBeEnlightened->address;


	int i;
	for(i =0; i<number_of_Lists; i++){
		mem_ptr al = &free_seg_lists[i];

		//checks before and after each free block
		while(al->next!=NULL){
			int q = 0;
			//insert before
			if(posEnd == al->next->address){
				toBeEnlightened->size += al->next->size;
				q=1;
			}
			//insert after
			if(posBen == al->next->address+al->next->size){
				toBeEnlightened->size +=al->next->size;
				toBeEnlightened->address = al->next->address;
				q=1;
			}

			if(q ){
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





