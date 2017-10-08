//Mrinmoy Mondal 
//mmondal
//Document.java 

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

//this class interacts with line class to creates the Line buffers
//it also has all the methods to modify multiple to single lines 
public class Document {

	//hold the data field for number of lines, 
	//a head and string buffer
	private int size;
	private final Line head;
	private String buffer;
	 
	private Document DocumentBuffer;
	
	
	//creates two new Line with head and dummy 
	public Document(){
		head = new Line("Head");
		head.next= new Line("Dummy");
	}
	
	//opens a document and saves all line to the linked list
	public Document(String fileName){
		//creates a new documnet 
		this();
		//reads the file line by line and adds it to the 
		//linkd list 
		try {
			FileReader input = new FileReader (fileName);
			BufferedReader reader = new BufferedReader(input);
			
			String x ;
			while((x=reader.readLine())!=null){
				this.addLine(x);
			}
			reader.close();
		//if the line fails to open it returns an error 	
		} catch (Exception e) {
			System.out.println("Failed to read. Error: "+e);
		}
		
	}

	//returns number of line
	public int getSize() {
		return size;
	}
	

	//returns the line at line number 
	public Line getLine(int line){
		Line iter = head.next;
		for(int i=0; i <line; i++){
			iter = iter.next;
		}
		return iter;
	}
	
	//checks if the line is in bound 
	public boolean inRange(int x){
		if(x>0 && x<=size){
			return true;
		}
		System.out.println("Invaid Line Number");
		return false;
	}
	
	//checks if the line's substring is in range 
	public boolean checkRange(int start, int end, Line iter){
		if(!iter.checkRange(start, end)){
			System.out.println("Invalid Range");
			return false;
		}
		return true;
	}
	
	//removes the substring from a line 
	public void deleteRange(int start, int end, int line) {
		//gets the line 
		Line iter = this.getLine(line);
		//checks the range and removes the substring 
		if(this.checkRange(start, end, iter))
			iter.deleteSubstring(start, end);
	}
	
	//deletes the line if within range
	public void removeLine(int x){
		//checks if the line exists 
		if(this.inRange(x)){
			//temporary iter line used to iterate  
			Line temp = head.next;
			//advances the iterator to x-1 line 
			for(int i=1; i<x;i++){
				temp = temp.next;
			}
			//if there is only one line 
			if(size==1){
				temp.next=null;
			}
			//if there is multiple lines 
			if(size>=2){
				temp.next = temp.next.next;
			}
			size--;
		}
	}
	//inserts the specified string into the line at index 
	public void insertAt(int line, int index, String in){
		Line iter = this.getLine(line);
		if(iter.checkRange(index, index)){
			iter.insert(index,in);
		}
		
	}
	//inserts the string buffer into the line at index 
	public void insertAt(int line, int index){
		this.insertAt(line, index,this.buffer);
		
	}
	
	//adds this line to the end and updates size
	public void addLine(String nextLine) {
		////sets the next Line and advances iter
		Line iter = this.getLine(this.size);
		iter.next =  new Line(nextLine);
		
		size++;
	}
	
	//prints every line with line number
	public void  showAll(){
		//skips over the dummy node and creates a new
		//itterator
		Line temp =null;
		if(size>0)
			temp =head.next;
		//creates a new line
		System.out.println();
		//checks every line and prints them 
		for(int i =0; i<size; i++){
			//prints the line number
			System.out.print((i+1) + ": ");
			//prints the line 
			temp.next.print(false);
			//advances the iterator
			temp=temp.next;
		}
		System.out.println();
	}
	
	//copies the given range into string buffer 
	public void copyRange(int start, int end, int line){
		
		Line iter = this.getLine(line);
		//if the selected range is out of index returns error message
		if(this.checkRange(start, end, iter)){
			this.buffer = iter.copy(start, end);
			iter.printSelect(start, end);
		}
	}
	
	//copies the range into the LineBuffer then deletes the range 
	public void cutRange(int start, int end, int line) {
		//copies to the buffer 
		this.copyRange(start, end, line);
		//deletes the range 
		this.deleteRange(start, end, line);
		
		
	}
	

	//copies the lines from linked list into the LineBuffer Linked list 
	public void copyLines(int start, int end){
		//checks if the line number is in range 
		if(this.inRange(start) && this.inRange(end)){
			//creates a new Document for DocumentBuffer
			this.DocumentBuffer = new Document();
			//adds each line from start to end 
			for(int i=start; i<=end; i++)
				this.DocumentBuffer.addLine(this.getLine(i).toString());
		}
	}
	
	//pastes the lines after the index 
	public void PasteLinesAt(int index){
		//checks the range of the 
		if(!this.inRange(index))
			return;
		//creates a temporary reference of the lines to be added on later 
		Line hold = this.getLine(index).next;
		//iterates through each line in line buffer
		for(int i=0; i<this.DocumentBuffer.size; i++)
			//starts adding the lines after index 
			this.getLine(index+i).next = new Line(this.DocumentBuffer.getLine(i+1).toString());
		//adds the hold back to the next line 
		this.getLine(index+this.DocumentBuffer.size).next = hold;
		//updates the size of the LinkedList 
		this.size+=this.DocumentBuffer.size;
	}
	
	//deletes all the line in the range 
	public void deleteLines(int start, int end) {
		if(this.inRange(start) && this.inRange(end)){
			this.DocumentBuffer = new Document();
			for(int i=start; i<=end; i++)
				this.removeLine(i);
		}
		
	}
	
	//prints the lines that are int the range 
	public void showRange(int start, int end){
		if(this.inRange(start) && this.inRange(end)){
			System.out.println();
			for(int i= start; i<= end; i++){
				System.out.println(i+ ": "+ this.getLine(i));	
			}
		}
	}
	
	//prints the selected line 
	public void printLine(int line){
		if(this.inRange(line)){
			Line iter = this.getLine(line);
			iter.print(true);
		}
	}
	
	//save all the lines using PrintWriter
		public void write(String txt){
			
			try{
				//creates a file 
				PrintWriter output = new PrintWriter(txt,"UTF-8");
				//the temp iterator that will be used to move through each lines
				Line temp =null;
				if(size>0)
					temp =head.next;
				//checks every line and saves them 
				for(int i =0; i<size; i++){
					//adds the line to the txt file
					output.println(temp.next);
					//advances the iterator
					temp=temp.next;
				}
				//closes the file 
				output.close();
			
				//if write fails catches the error 	
			}catch(IOException e){
				System.out.println("Failed to Write file");
			}			
		}

		
}
