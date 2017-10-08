
//Mrinmoy Mondal 
//mmondal
//Line.java

//this class holds the line and its next node 
//functions such editing a line, methods are stored here 
public class Line {

	//holds the next instance of Line 
	Line next; 
	
	//holds the data filed for the string so it can't be modified by 
	//other classes
	private String data; 
	
	//constructor requires a string that will be held in the data field
	public Line(String line) {
		data = new String(line); 
	}
	
	//checks if the range is within the substring of the current line 
	public boolean checkRange(int start, int end){
		if (start>end || end-start>data.length()-1 || start<0 || end>=data.length())
			return false;

		return true;
	}
	
	//returns a string of the copied substring 
	public String copy(int start, int end ){
		if(!checkRange(start, end))
			return null;
		return data.substring(start, end+1);
		
	}
	
	//deletes the specified substring 
	public void deleteSubstring(int start, int end){
		//removes the data by overwriting the date field
		this.data = data.substring(0, start) + data.substring(end+1, data.length());
	}
	
	//creates the index and scale with the substring 
	public void print(boolean printIndex){
		//prints out the index numbers  
		if(printIndex){
			String indexNumbers="\n";
			String indexLines="";
			//prints out the symbols at the correct intervals 
			for(int i=0; i<data.length(); i++){
				if (i%5==0){
					indexNumbers+= i+"    ";
				}
				if(i%10 == 0){
					indexLines +=("|");
					continue;
				}
				if(i%5 == 0){
					indexLines +=("+");
					continue;
				}

				indexLines +=("-");
			}
			System.out.println(indexNumbers);
			System.out.println(indexLines);
		}
		System.out.println( this.toString());
		
	}
	
	//prints the "^" at the specified substring 
	public void printSelect(int start, int end){
		this.print(true);
		for(int i=0; i<data.length();i++){
			if(i>= start && i<=end)
				System.out.print("^");
			else
				System.out.print(" ");
		}
		System.out.println();
	}
	//allows main/document class to get size 
	private int size;
	public int getSize(){
		size = this.data.length();
		return size;
	}
	
	public Line getNext() {
		return next;
	}
	
	//returns string 
	@Override 
	public String toString(){
		return this.data;
	}
	
	//inserts the string at index
	public void insert(int index, String in) {
		data = data.substring(0, index) +in+ data.substring(index, data.length());
		
	}
	
	
	
	
}

