/* NumbeGrid.java
*  Mrinmoy Mondal
*  mmondal
*/
import java.util.Scanner;
//holds UI and performs user specified task
public class NumberGrid {
	public static void main(String[] args) {
		//hold the grid 
		Grid grid = new Grid();
		Scanner in = new Scanner(System.in);
		//hold all the user input
		int allIn [] = new int[6]; 
		//used for the switch
		String x;
		String y = "node";
		do{
			printMenu();
			x = in.next();
			switch(x){
				//prints the grid 
				case "dis": 
					grid.printAll();
					break;
				//fills in the value of each cell
				case "f" : 
					getStartEnd(in, allIn,"");
					System.out.print("with value: ");
					grid.fill(allIn[0], allIn[1], allIn[2], allIn[3], in.next());
					break;
				//numbers the cells 
				case "n":
					getStartEnd(in, allIn, "");
					grid.Number(allIn[0], allIn[1], allIn[2], allIn[3]);
					break;
				//adds two cells into destination 
				case "a":
					getStartEnd(in, allIn, y);
					getStart(in, allIn, "destination", 4);
					grid.add(allIn[0], allIn[1], allIn[2], allIn[3],allIn[4],allIn[5]);
					break;
				//multiplies two cells together 
				case "m":
					getStartEnd(in, allIn,y);
					getStart(in, allIn, "destination", 4);
					grid.mult(allIn[0], allIn[1], allIn[2], allIn[3],allIn[4],allIn[5]);
					break;
				//subtracts two cells into destination cell
				case "s":
					getStartEnd(in, allIn, y);
					getStart(in, allIn, "destination", 4);
					grid.sub(allIn[0], allIn[1], allIn[2], allIn[3],allIn[4],allIn[5]);
					break;
				//divides two cells into destination 
				case "d":
					getStartEnd(in, allIn, y);
					getStart(in, allIn, "destination", 4);
					grid.div(allIn[0], allIn[1], allIn[2], allIn[3],allIn[4],allIn[5]);
					break;
				//adds entire row together 
				case "ar":
					getStartEndEntire(in, allIn, "row");
					grid.addRows(allIn[0], allIn[1], allIn[2]);
					break;
				//subtracts entire row together 
				case "sr":
					getStartEndEntire(in, allIn, "row");
					grid.subRows(allIn[0], allIn[1], allIn[2]);
					break;
				//multiply rows 
				case "mr":
					getStartEndEntire(in, allIn, "row");
					grid.multRows(allIn[0], allIn[1], allIn[2]);
					break;
				//divide rows
				case "dr":
					getStartEndEntire(in, allIn, "row");
					grid.divRows(allIn[0], allIn[1], allIn[2]);
					break;
				//add cols
				case "ac":
					getStartEndEntire(in, allIn, "row");
					grid.addcols(allIn[0], allIn[1], allIn[2]);
					break;
				//sub cols
				case "sc":
					getStartEndEntire(in, allIn, "row");
					grid.subcols(allIn[0], allIn[1], allIn[2]);
					break;
				//divides cols
				case "dc":
					getStartEndEntire(in, allIn, "row");
					grid.divcols(allIn[0], allIn[1], allIn[2]);
					break;
				//multiply cols 
				case "mc":
					getStartEndEntire(in, allIn, "row");
					grid.multcols(allIn[0], allIn[1], allIn[2]);
					break;
				//inserts a row
				case "ir":
					System.out.print("Insert at: ");
					grid.insertRow(in.nextInt());
					break;
				//inserts a col
				case "ic":
					System.out.print("Insert at: ");
					grid.insertCol(in.nextInt());
					break;
				//Deletes row
				case "delr":
					System.out.print("row number: ");
					grid.deleteRow(in.nextInt());
					break;
				//Deletes row
				case "delc":
					System.out.print("column number: ");
					grid.deleteCol(in.nextInt());
					break;
			}
		}while(!x.equals("q"));
	}
//gets row and col number from the user
public static void getStartEndEntire(Scanner in, int ret[], String x){

	System.out.print("first "+ x+": ");
	ret[0] = in.nextInt();
	System.out.print("second "+  x+": ");
	ret[1] = in.nextInt();
	System.out.print("target "+  x+": ");
	ret[2] = in.nextInt();
}
//gets row and col number from the user
public static void getStart(Scanner in, int ret[], String y,int i){
	System.out.print(y+" row: ");
	ret[0+i]= in.nextInt();
	
	System.out.print(y+" column: ");	
	ret[1+i]= in.nextInt();	
}
//gets row and col number from the user
public static void getStartEnd(Scanner in, int ret[] ,String x){
	
	getStart(in, ret,"first "+x,0);

	System.out.print("second " +x+ " row: ");
	ret[2] = in.nextInt();
	System.out.print("second " +x+ " column: ");
	ret[3] = in.nextInt();
}
//menu options 
public static void printMenu(){
 System.out.print("\nOperations\n"
 		+ "display           dis           assign cell       as\n"
 		+ "fill              f             number            n\n"
 		+ "add cells         a             subtract cells    s\n"
 		+ "multiply cells    m             divide cells      d\n"
 		+ "add rows          ar            subtract rows     sr\n"
 		+ "multiply rows     mr            divide rows       dr\n"
 		+ "add columns       ac            subtract columns  sc\n"
 		+ "multiply columns  mc            divide columns    dc\n"
 		+ "insert row        ir            insert column     ic\n"
 		+ "delete row        delr          delete column     delc\n"
 		+ "quit              q\n"
 		+ "->");
}


}