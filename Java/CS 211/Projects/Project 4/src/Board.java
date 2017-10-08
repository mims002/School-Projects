import java.util.Scanner;
//Sets up all the gems in the board from array input or user input
//allows for Gems to be properly be removed or accessed 
public class Board {
	
  //declares the Gems class variable with private level access 	
  private Gem [][] gems;
  
	
  // Convenience constructor to build from a 2D array of ints. If
  // negative int appears, treat it as an empty gem. Otherwise, the
  // numbers represent the kinds of the gems to be created.
  public Board(int g[][]){
	  //initializes the size for the int array
	  this.gems= new Gem[g.length][g[0].length];
	 //loops through the 2d array
	  for(int x=0;x<g.length;x++){
		  for (int y=0; y<g[0].length;y++){
			//adds a gem to each spot in gem from the passed int arrray 
			  this.gems[x][y]= (g[x][y]<0)? Gem.makeEmpty(): new Gem(g[x][y]);
		  }
	  }
	 
	 
	
	  
  }
   // Make a deep copy of this Board. Requires that the 2D array of
  // gems be copied entirely to prevent shallow references to the same
  // arrays.  One of the required constructors is useful for this method.
 @Override public Board clone(){
	//creates a new gem that will hold shallow copy of the current Gems
	Gem [][] cloned = new  Gem[gems.length][gems[0].length];
	//creats a new Board that will be returned 
	Board temp=new Board(new int[gems.length][gems[0].length]);
	
	//loops through the 2d array
	for(int x=0;x<cloned.length;x++){
		  for (int y=0; y<cloned[0].length;y++){
			  //adds a cloned gem to cloned
			  cloned[x][y]=gems[x][y].clone();
		  }	  
	}
	//changes the new Board gems to the cloned gems 
	temp.gems=cloned;
	//returns Board
	return temp;
  }

  // Access the number of rows and columns. Assumes all rows have equal length.
  public int getRows(){
	  return gems.length;
  }

  public int getCols(){
	  if(this.getRows()>0)
		  return gems[0].length;
	  return 0;
  }

  // True if the given position is in bounds and contains a gem which
  // can be removed. False if the row/col is out of bounds or the
  // board is empty at the specified position.
  public boolean validGemAt(int r, int c){
	  //checks if its inboud the gems int array
	  if(r< this.getRows() && c< this.getCols() && r>=0 && c>=0 && this.gemAt(r, c).isFilled())
		  return true;
	  else
		  return false;
  }

  // Return true if at least one gem exists on the board. False if all
  // board positions are empty.
  public boolean hasValidGem(){
	  //loops though each gem to if its filled 
	  for(Gem[]x:this.gems)
		  for(Gem y:x)
			  if(y.isFilled())
				  return true;
	  return false;
  }

  // Retrieve gem at given location. Do not do bounds checking; out of
  // bounds positions should automatically raise an
  // IndexOutOfBoundsException.
  public Gem gemAt(int i, int j){
	  return(this.gems[i][j]);
  }

  // Clear all flags of gems on the board by invoking their
  // clearFlag() method.
  
  public void clearFlags(){
	  //loops though each gem to clear their flag via reference
	  for(Gem[]x:this.gems)
		  for(Gem y:x)
			  y.clearFlag();  
  }
  
  //removes flagged gems, then drops them down and shift to left to 
  //remove any spaces or colums
  public void doRemovals(){
	  //first it removes flagged Gems
	  //loops through each Gem and removes it via reference
	  for(int x=0; x<this.getRows();x++)
		  for(int y = 0; y<this.getCols(); y++){
			  //checks if the Gem is flagged 
			  //then puts a empty gem in its place
			  if(this.gems[x][y].flagged())  
				  this.gems[x][y]=Gem.makeEmpty();
		  }

	  //next all the Gems fall downward 
	  //loops through each column
	  for(int y=0; y<this.getCols();y++){
		  //boolean used to find the first filled index
		  //int holds the filled index values
		  int passIndex=this.getRows()-1;
		  //loops through each row in reverse
		  for(int x=this.getRows()-1;x>=0;x--){
			  //starts lowering all gems to empty blocks
			  //checks if it filled then adds to the passIndex gem 
			  //which started from the first non empty spot
			  if(gems[x][y].isFilled() ){
				  //removes the gem from where its at and puts it
				  //in the empty block
				  Gem temp= gems[x][y].clone();
				  gems[x][y]= Gem.makeEmpty();
				  gems[passIndex--][y]= temp;
			 }	
		  }
	  }
	  //initializes the colum variable 
	  int passIndex=-1;
	  //removes any empty colum
	  //loops through each colum
	  for(int y=0; y<this.getCols();y++){
		  
		  boolean remove=true;
		  
		  //checks if the whole colum is empty
		  for(int x=0; x<this.getRows();x++){
			  if(gems[x][y].isFilled())
				  remove = false;
		  }
		 //advances the colums if its not meant to be removed 
		  if(!remove)
			  passIndex++;
		  //adds everything from empty colum to non empty one 
		  for(int x=0; x<this.getRows() && !remove;x++){
			  //removes the gem from where its at and puts it
			  //in the empty block
			  Gem temp= gems[x][y].clone();
			  gems[x][y]= Gem.makeEmpty();
			  gems[x][passIndex]= temp;
		 }
			  
		  
	  }
	  
  }

  //Converts to a simple saveable string. '.' represents empty squares
  public String saveString(){
	//output varibale 
	String output="";
	//loops though each gem and adds its kind to ourput
	for(Gem[]x:this.gems){
		for(Gem y:x)
		{
			//adds empty . to empty gems
			if(y.isEmpty())
				output+=". ";
			//adds the kind and a space when not empty 
			else 
				output+=y.kindString()+" ";
		}
		//adds a new line when its the end of the row
		output+="\n";
	}
	//returns the string
	return output;
  }
  
  //Create a board from the given string. 
  public static Board fromSaveString(String s){
	  //converts to a string array to find the rows
	  String [] modified = s.split("\n");
	  int row = modified.length;
	 
	  //uses scanner to find the colums
	  Scanner useMe = new Scanner(modified[0]);
	  int cols=0;
	  while(useMe.hasNext()){
		  useMe.next();
		  cols++;
	  }
	   useMe.close();
	 //set the scanner to read the passed String to get all the gems
	 //into int array that can be use to create the board
	 useMe = new Scanner (s);

	 //initalizes the rows and colum array with the dimensions 
	 int array[][]=new int[row][cols];
	 
	 for(int x=0; x<row; x++){

		 for(int y = 0; y<cols; y++){
			 String temp = useMe.next();
			 
			 if(temp.equals(".")){
				 array[x][y]=-1;
			 }
			 else
				 array[x][y]= Integer.parseInt(temp);
		 }

	 }
	 useMe.close();
	 //return the newly created board from array
	 return new Board(array);
  }
  // Implementation Provided. Fancy display string version of the
  // board; assumes gem kinds fit in 2 chars. Flagged gems have an
  // asterisk put to the right of them.
  public String toString(){
    StringBuilder sb = new StringBuilder();
    // Col header
    sb.append("   ");
    for(int j=0; j<this.getCols(); j++){
      sb.append(String.format("%3d",j));
    }
    sb.append("\n");
    sb.append("   ");
    for(int j=0; j<this.getCols(); j++){
      sb.append("---");
    }
    sb.append("\n");
    // Main body of board
    for(int i=0; i<this.getRows(); i++){
      sb.append(String.format("%2d|",i));
      for(int j=0; j<this.getCols(); j++){
        Gem g = this.gemAt(i,j);
        char flag = g.flagged() ? '*' : ' ';
        if(j==0){
          sb.append(String.format("%3s%c",g.kindString(),flag));
        }
        else{
          sb.append(String.format("%2s%c",g.kindString(),flag));
        }
      }
      sb.append("\n");
    }
    return sb.toString();
  }


}
