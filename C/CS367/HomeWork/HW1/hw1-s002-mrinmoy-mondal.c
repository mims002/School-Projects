//Mrinmoy Mondal 
//G00870639

#include <stdio.h>
#include <stdlib.h>


void colA( int **input, int row, int col);
void rowA( int **input, int row, int col);
void getData(int **input, int row, int col);
void freeAll(int **array, int row);

int main(){
	//holds the value for row and col
	int row;
	int col;
	//checks if enter was pressed to stop the scanf
	char c; 
	//gets the input from the user
	printf("Inputs: ");
	if(!(scanf("%d %d%c", &row, &col, &c))){
		printf("Output: Error -Please enter Numbers only\n");
		exit(1);
	}
	//checks if the row and col are positive 
	if(row<= 0 || col<=0 || c == '\n'){
		if(c == '\n' && row> 0 && col>0)
			printf("Output: Error -Missing array elements\n");
		else
			printf("Output: Error -Non-positive row/column number\n");
		exit(1);
	} 
	/////////////////////////////////////
	//creates the array that will hold all the values and initiatizes the rows
	int **array = malloc(sizeof(int)* row);
	//gets the data that will be stored in the int array 
	getData(array,row,col);
	/////////////////////////////////////
	//calculates the averages and prints them 
	printf("Output: ");
	rowA(array, row, col);
	colA(array,row,col);
	printf("\n");
	///////////////////////////////////
	//frees all the alocated memory
	freeAll(array,row);
	
}

//itterates through the array and frees each position 
void freeAll(int **array, int row){
	
	int y;
	for(y=row-1; y>=0; y--){
		free(array[y]);
	}	
	free(array);
}

//get the user input data and stops if enter is pressed 
void getData(int **array, int row, int col){
	
	//loops through the rows and cols and enters all the values 
	int x, y;
	char c;
	for(x=0; x<row; x++){
		//allocates memory to each col
		array[x] = malloc(sizeof(int)*col);
		
		for(y=0; y<col; y++){
			
			int temp;
			scanf("%d%c", &temp, &c);
			//checks if the user pressed enter then stops the scanf
			if(c == '\n' && y != col-1){
				printf("Output: Error -Missing array elements\n");
				freeAll(array, x+1);
				exit(1);
			}
			//puts the value in the array
			*(array[x]+y) = temp;	
			//printf("%p , %02d; ", (array[x]+y), *(array[x]+y));
		}
		//printf("\n");
	}	
}

//calculates the column averages 
void colA( int **input, int row, int col){
	
	int x,y;
	double sum;
	for(x=0; x<col; x++){
		sum =0;
		for(y=0; y<row; y++){
			sum += (double)*(input[y]+x);
		}
		printf("%0.2lf ", sum/row);
		
	}	
}
//calculates the row averages 
void rowA( int **input, int row, int col){
	
	int x,y;
	double sum;
	for(x=0; x<row; x++){
		sum =0;
		for(y=0; y<col; y++){
			sum += (double)*(input[x]+y);
		}
		printf("%0.2lf ", sum/col);
	}		
}

