//Mrinmoy Mondal 
//mmondal
//LineEditor.java

import java.util.Scanner;
//main class does all the userinteraction 
	//contains all the methods for selecting an operation 
public class LineEditor {
	
	public static void main(String[] args) {
	//creates a scanner that will be used to get user input	
	Scanner in = new Scanner(System.in);
	String x;
	//new document that will hold the linked list
	Document txt= new Document();
	int ss[]= new int[2];
	
	//keeps looping until the user quits the program 
	do{
		//prints out the menu and asks for user input
		printMenu();
		x = in.next();
		
		//created a switch that calls functions based on user input
		//performs the action requested
		switch(x){
			//////////////////////////////////////////////
			//a new line is created and added to document
			case "l": //Loads file
				System.out.print("Enter the file name: ");
				txt = new Document(in.next());
				break;
			/////////////////////////////////////////////
			case "nl": //adds new lines 
					LineEditor.addNewLine(in, txt);
					break;
			//////////////////////////////////////////////
			case "sa": //shows all line s
				
				txt.showAll();
				break;
			///////////////////////////////////////////////
			case "dl": //deletes a line
				
				txt.showAll();
				System.out.print("Line Number-> ");
				txt.removeLine(in.nextInt());
				break;
			////////////////////////////////////////////////
			case "wq": //writes and quits
				x="q";
			case "w": //wites to file 
				System.out.print("File Name -> ");
				txt.write(in.next());
				break;
			////////////////////////////////////////////////
			case "el": //edit line 
				System.out.print("Line Number -> ");
				int l = in.nextInt();
				if(txt.inRange(l)){
					txt.printLine(l);
					subMenuOperation(in, txt,l);
				}
				break;
			///////////////////////////////////////////////
			case "sl": //show a line
				System.out.print("Line-> ");
				txt.printLine(in.nextInt());
				break;
			//////////////////////////////////////////////
			case "sr": //show range 
				ss= LineEditor.getStartEnd(in);
				txt.showRange(ss[0], ss[1]);
				break;
			///////////////////////////////////////////
			case "cr": //copy range
				ss= LineEditor.getStartEnd(in);
				txt.copyLines(ss[0], ss[1]);
				break;
			case "pl": //paste lines
				System.out.print("insert at position: ");
				txt.PasteLinesAt(in.nextInt());
				break;
			////////////////////////////////////////////
			case "dr": //deltes range 
				ss= LineEditor.getStartEnd(in);
				txt.deleteLines(ss[0], ss[1]);
				break;
			//////////////////////////////////////////
			case "m":
				break;
			case "quit": //quits 
				x = "q";
			case "q":
				break;
			default: //when invalid selction 
				System.out.println("Invalid Selection");
				
		}
	}while(!x.equals("q"));
	//closes the scanner 	
	in.close();
	}
	
	//performs the sub menu options for editing lines  
	public static void subMenuOperation(Scanner in, Document txt, int line){
		
		String x;
		int ss[] = new int[2];
		do{
			printSubMenu();
			x = in.next();
			
			switch(x){
				case "c":  
					ss= LineEditor.getStartEnd(in);
					txt.copyRange(ss[0], ss[1], line);
					break;
				////////////////////////////////////
				case "t":
					ss= LineEditor.getStartEnd(in);
					txt.cutRange(ss[0], ss[1], line);
					break;
				////////////////////////////////////
				case "p":
					System.out.print("insert at position: ");
					ss[0]= in.nextInt();
					txt.insertAt(line, ss[0]);
					break;
				////////////////////////////////////
				case "d": 
					ss = LineEditor.getStartEnd(in);
					if(txt.getLine(line).checkRange(ss[0], ss[1]))
						txt.getLine(line).printSelect(ss[0], ss[1]);
					else
						break;
					System.out.print("y/n: ");
					
					if(in.next().equals("y"))
						txt.deleteRange(ss[0], ss[1], line);
					break;
				////////////////////////////////////
				case "e":
					System.out.print("insert at position: ");
					ss[0]= in.nextInt();
					System.out.print("text: ");
					in.nextLine();
					txt.insertAt(line, ss[0],in.nextLine() );
				////////////////////////////////////
				case "s":
					txt.printLine(line);
					break;
				////////////////////////////////////
				case "m":
				case "quit":
				case "q":
					break;
				default:
					System.out.println("Invalid Selection");
					
				
			}
		}while(!x.equals("q"));
		
	}
	
	//asks the user for two numbers start and end 
	public static int[] getStartEnd(Scanner in){
		
		int ss[]= new int[2];
		System.out.print("from position: ");
		ss[0] = in.nextInt();
		System.out.print("to position: ");
		ss[1] = in.nextInt();
		
		return ss;
	}
	
	//adds new line to the document from user input
	public static void addNewLine(Scanner in, Document txt){
		
		String x;
		do{	
			//promts the user to add a new line 
			System.out.print("type line? (y/n): ");
			x= in.next().toString();
			//adds the new line 
			if(x.equals("y")){
				
				System.out.print( (txt.getSize()+1) + ": ");
				in.nextLine();
				txt.addLine(in.nextLine());				
			}
		}while(x.equals("y"));
	}
	
	
	
	//prints the main Menu
	public static void printMenu(){
		  System.out.print(
		   "\n\nMenu: m           Delete line:  dl\n"+
		   "Load file: l      Delete range:  dr\n"+
		   "Show all: sa      Copy range:  cr\n"+
		   "Show line:  sl    Paste lines:  pl\n"+
		   "Show range:  sr   Write to file:  w\n"+
		   "New line:  nl     Quit:  q\n"+
		   "Edit line:  el    Write and quit:  wq\n->");
	}
	
	//prints the sub Menu
	public static void printSubMenu(){
		  System.out.print(
				  "\tShow line:  s\n" 
				  + "\tCopy to string buffer:  c\n"
				  + "\tCut:  t\n"
				  + "\tPaste from string buffer:  p\n"
				  + "\tEnter new substring:  e\n"
				  + "\tDelete substring:  d\n"
				  + "\tQuit line:  q\n->");
				   
				   
				   
				 
	}

}
