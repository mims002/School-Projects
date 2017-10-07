#define HEAPSIZE 10000

#define ALIGNMENT 8

#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7) 


/* Do not delete any declarations above this comment */

/* You may ADD fields to the struct below if you need to but do
   not delete any fields or your submission will probably not compile */
/* The stuct (and related drivers, etc.) are set up so you can use a
   singly linked list (just next ptrs) or a doubly linked list */
/* You may add data structures if you need them.   Remember no arrays 
   (except char * for input purposes) */

 
typedef struct mem_rec{
    int address;  
    int size;
	int range[2];
    struct mem_rec *next;
    struct mem_rec *previous;
} mem_rec, *mem_ptr;



void mm_free(mem_ptr );
mem_ptr mm_malloc(int );
mem_ptr mm_realloc(mem_ptr, int);
