/* Grid.java
*  Mrinmoy Mondal
*  mmondal
*/

//handles all the rows and column operations 
public class Grid {
    //holds the head node
	Node head; 
	//rows and cols
	int rowsLenght,colLenght,printWidth=10;
	//creates 10 rows and 5 cols
	public Grid(){
		
		head = new Node();
		LinkNode(head, head, head);
		//sets the initial size of grid to 1,1 because of the head
		rowsLenght =1;
		colLenght = 1;
		//adds 10 rows
		for(int x=0; x<9; x++){
			addRow();	
		}
		//adds 6cols
		for(int x=0; x<5; x++){
			addCol();;		
		}	
	}
	//links a node with right and down 
	public void LinkNode(Node node, Node down,Node right){
		node.right = right;
		node.down = down;
	}
	//creates a new node and links it right and down
	public Node newLinkedNode(Node down,Node right){
		Node node = new Node();
		this.LinkNode(node, down, right);
		return node;
	}
	//inserts a columns at row r
	public void insertRow(int r){
		Node temp = new Node();
		//gets the previous col
		Node prevRow = getNode(r+rowsLenght-1, 0);
		Node rowHead;
		//if it points to head then it changes head
		if(r==0){
			LinkNode(temp, head, temp);
			head = temp;
			rowHead = head;
		}else{
			rowHead = new Node();
			LinkNode(rowHead, prevRow.down, rowHead);
			prevRow.down = rowHead;	
		}
		//goes row by row and add the new row
		for(int x = 0; x < colLenght-1; x++){
			System.out.print(prevRow.val+" ");
			prevRow = prevRow.right;
			temp.right = newLinkedNode(prevRow.down, rowHead);
			temp = temp.right;
			prevRow.down = temp;		
		}
		//increases row length
		rowsLenght++;		
	}
	//inserts a columns at col r
	public void insertCol(int r){
		Node temp = new Node();
		//gets the previous row
		Node prevRow = getNode(0, colLenght-1+r);
		Node colHead;
		//if it points to head then it changes head
		if(r==0){
			LinkNode(temp,temp, head);
			head = temp;
			colHead = head;	
		}else{
			colHead = new Node();
			LinkNode(colHead, colHead, prevRow.right);
			prevRow.right = colHead;	
		}
		//goes row by row and add the new col
		for(int x = 0; x < rowsLenght-1; x++){
			System.out.print(prevRow.val+" ");
			prevRow = prevRow.down;
			temp.down = newLinkedNode(colHead, prevRow.right);
			temp = temp.down;
			prevRow.right = temp;			
		}
		//increases row length
		colLenght++;		
	}
	//adds a new col to the grid
	public void addCol(){
		//get the last column
		Node temp = getNode(0, colLenght-1);
        //makes a new column 
        temp.right=new Node();
		LinkNode(temp.right,temp.right, head);
		
		//preserves the col head 
		Node colHead= temp.right;
		//holds the previous row
        Node prevrow = colHead;
        //starts to go through and add a new cols to all the rows
        //also sets the previous row to point down 
		for(int x=0; x<rowsLenght-1;x++){
             temp = temp.down;
             
             temp.right = newLinkedNode(colHead, temp.right);
             prevrow.down= temp.right;
             prevrow=prevrow.down;	
		}
		//increases col length
		colLenght++;
	}
	//adds a new row to the grid
	public void addRow(){
		//get the last column
		Node temp = getNode(rowsLenght-1, 0);
		//makes a new column
		temp.down = new Node();
		LinkNode(temp.down, head, temp.down);
		//preserves the row head 
		Node rowHead = temp.down;
		//holds the previous col
		Node prevcol = rowHead;
		//starts to go through and add a new rows to all the rows
        //also sets the previous col to point right  
		for(int x = 0; x < colLenght-1; x++){
			temp= temp.right;
			temp.down = newLinkedNode(temp.down, rowHead);
			prevcol.right = temp.down;
			prevcol = prevcol.right;
		}
		//increases row length
		rowsLenght++;		
	}
	//adds the rows together and puts it in destination 
	public void add(int srow, int scol, int erow, int ecol, int drow,int dcol){
		Node src = getNode(srow, scol);
		src.add(getNode(erow, ecol), getNode(drow, dcol));
	}
	//divides two cells into desination 
	public void div(int srow, int scol, int erow, int ecol, int drow,int dcol){
		Node src = getNode(srow, scol);
		src.div(getNode(erow, ecol), getNode(drow, dcol));
	}
	public void sub(int srow, int scol, int erow, int ecol, int drow,int dcol){
		Node src = getNode(srow, scol);
		src.sub(getNode(erow, ecol), getNode(drow, dcol));
	}
	//multiplies two cells into destination 
	public void mult(int srow, int scol, int erow, int ecol, int drow,int dcol) {
		Node src = getNode(srow, scol);
		src.mult(getNode(erow, ecol), getNode(drow, dcol));
		
	}
	//delete row
	public void deleteRow(int i){
		//if there are only one row then head is to invalid
		if(rowsLenght<=1){
			head = new Node();
			LinkNode(head, head, head);
			colLenght=0;	
		}else {//when the first col is being removes head needs point to the next
			Node temp = getNode(i+rowsLenght-1, 0);
			if(i==0){
				head = head.down;
				temp = temp.right;
			}
			//goes through each column and moves the right node to next right one
			for(int x=0; x<colLenght; x++){
				temp.down = temp.down.down;
				temp = temp.right;
			}
		}
		rowsLenght--;
	}
	//delete row
	public void deleteCol(int i){
		//if there are only one col then head is to invalid
		if(colLenght<=1){
			head = new Node();
			LinkNode(head, head, head);
			rowsLenght=0;
		}
		else{
			//gets the node before the target
			Node temp = getNode(0, i+colLenght-1);
			if(i==0){
				//when the first col is being removes head needs point to the next
				head = head.right;
				temp = temp.down;
			}
			//goes through each column and moves the right node to next right one
			for(int x=0; x<rowsLenght; x++){
				temp.right = temp.right.right;
				temp = temp.down;
			}	
		}
		colLenght--;
	}
	//add rows together 
	public void addRows(int srow, int erow, int drow) {
		 //gets the nodes that will be used to add the two rows together 
		 Node src = getNode(srow, 0);
		 Node src2= getNode(erow, 0);
		 Node dst = getNode(drow, 0);
		
		 //goes through each col and add the two cols to destination col, same row
		 for(int i=0; i<colLenght; i++){
			 src2.add(src, dst);
			 src = src.right;
			 src2 = src2.right;
			 dst = dst.right;
		 }
	}
	//subtracts rows 
	public void subRows(int srow, int erow, int drow) {
		//gets the nodes that will be used to subtracts the two rows together 
		 Node src = getNode(srow, 0);
		 Node src2= getNode(erow, 0);
		 Node dst = getNode(drow, 0);
		//goes through each col and subtracts the two cols to destination col, same row 
		 for(int i=0; i<colLenght; i++){
			 src2.sub(src, dst);
			 src = src.right;
			 src2 = src2.right;
			 dst = dst.right;
		 }	
	}
	//multiply rows 
	public void multRows(int srow, int erow, int drow) {
		//gets the nodes that will be used to multiply the two rows together 
		 Node src = getNode(srow, 0);
		 Node src2= getNode(erow, 0);
		 Node dst = getNode(drow, 0);
		//goes through each col and multiply the two cols to destination col, same row
		 for(int i=0; i<colLenght; i++){
			 src.mult(src2, dst);
			 src = src.right;
			 src2 = src2.right;
			 dst = dst.right;
		 }	
	}
	//divide rows 
	public void divRows(int srow, int erow, int drow) {
		//gets the nodes that will be used to divide the two rows together  
		Node src = getNode(srow, 0);
		Node src2= getNode(erow, 0);
		Node dst = getNode(drow, 0);
		//goes through each col and divides the two cols to destination col, same row
		 for(int i=0; i<colLenght; i++){
			 src2.div(src, dst);
			 src = src.right;
			 src2 = src2.right;
			 dst = dst.right;
		 }
}	
	//adds two cols to destination col
	public void addcols(int scol, int ecol, int dcol) {
		//gets the nodes that will be used to add the two cols together 
		Node src = getNode(0, scol);
		Node src2= getNode(0, ecol);
		Node dst = getNode(0, dcol);
		//goes through each row and add the two row to destination row, same col 
		for(int i=0; i<rowsLenght; i++){
			 src2.add(src, dst);
			 src = src.down;
			 src2 = src2.down;
			 dst = dst.down;
		 }		
	}
	//subtracts two cols to destination col
	public void subcols(int scol, int ecol, int dcol) {
		//gets the nodes that will be used to subtract the two cols together 
		Node src = getNode(0, scol);
		Node src2= getNode(0, ecol);
		Node dst = getNode(0, dcol);
		//goes through each row and subtract the two row to destination row, same col 
		for(int i=0; i<rowsLenght; i++){
			 src2.sub(src, dst);
			 src = src.down;
			 src2 = src2.down;
			 dst = dst.down;
		 }		
	}
	//multiply two cols to destination col
	public void multcols(int scol, int ecol, int dcol) {
		//gets the nodes that will be used to multiply the two cols together 
		Node src = getNode(0, scol);
		Node src2= getNode(0, ecol);
		Node dst = getNode(0, dcol);
		//goes through each row and multiply the two row to designation row, same col 
		for(int i=0; i<rowsLenght; i++){
			 src2.mult(src, dst);
			 src = src.down;
			 src2 = src2.down;
			 dst = dst.down;
		 }		
	}
	//divide two cols to destination col
	public void divcols(int scol, int ecol, int dcol) {
		//gets the nodes that will be used to divide the two cols together 
		Node src = getNode(0, scol);
		Node src2= getNode(0, ecol);
		Node dst = getNode(0, dcol);
		//goes through each row and divide the two row to designation row, same col 
		for(int i=0; i<rowsLenght; i++){
			 src2.mult(src, dst);
			 src = src.down;
			 src2 = src2.down;
			 dst = dst.down;
		 }		
	}
	//number: adds in numbers into grid with specified location
	public void Number(int srow, int scol, int erow, int ecol){
		int n = 0;
		for(;srow<=erow;srow++){
			for(int x=scol;x<=ecol;x++){
				getNode(srow, x).val.setDval(n++);
			}
		}
	}
	public void addrowAll(int i,int drow,int dcol){
		Node temp = getNode(i, 0);
		int x = 0;
		for(i = 0; i<colLenght; i++ ){
			if(!temp.val.tag || !temp.val.isDval)
				return;
			x+=temp.val.getDBL();
			temp= temp.right;
		}
		
		getNode(drow, dcol).val.setDval(x);
	}
	//fill: adds in a data into grid with specified location
	public void fill(int srow, int scol, int erow, int ecol, String data){
		
		for(;srow<=erow;srow++){
			Node temp = getNode(srow, scol);
			for(int x=scol;x<=ecol;x++){
				temp.val.setVal(data);
				temp = temp.right;
			}	
		}
	}
	//gets a node from grid with x,y
	public Node getNode(int row, int col){
		Node temp = head;
		for(int y =0; y<row; y++){
			temp = temp.down;
		}
		for(int x =0;x<col;x++){
			temp = temp.right;
		}
		
		return temp;
	}
	//prints out all the values in the grid
	public void printAll(){
		//creates the string format that will be used
		String format = "%-"+this.printWidth+"s";
		for(int y =-1; y<this.rowsLenght; y++){
			//prints the row label
			if (y!=-1) System.out.printf("row %d\t",y);
			else System.out.printf("\t","");
			//loops through each col and prints the value
			for(int x=0; x<this.colLenght; x++){
				//prints out the col label
				if (y==-1) System.out.printf(format, String.format("Col %d", x));
				//Doesn't print if the tag is invalid
				if(y ==-1 || !getNode(y,x).val.tag ) continue;
				//prints the value
				System.out.printf(format,getNode(y,x).val);		
			}
			System.out.println();
		}
		System.out.println();
	}
}
