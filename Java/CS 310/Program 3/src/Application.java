/* Application.java
*  Mrinmoy Mondal
*  mmondal
*/
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
//interacts with the user to insert new records or display them 
public class Application {
	//main method
	public static void main(String[]args) throws FileNotFoundException{
		Disk disk = new Disk(2000, 512);
		DirectFile df = new DirectFile(disk, 60, 27, 1024, 600);
		File file = new File("mountain records.txt");
		//read all the records 
		Scanner records = new Scanner(file);
		//inserts all the record
		while(records.hasNext()){
			df.insertRecord(formatrecord(records.nextLine()));
		}
		records.close();
		records = new Scanner(System.in);
		boolean quit = false;
		//UI
		do{
			printMenu();
			int x = records.nextInt();
			records.nextLine();
			
			switch(x){
			case 1:	//finds records
				df.insertRecord(formatrecord(getRecord(records)));
				break;
			case 2: //inserts new record
				System.out.print("Enter Name: ");
				String name = records.nextLine();
				char[]record =  formatrecord(name+"# # ");
				if(df.findRecord(record) ||df.findRecord(record=formatrecord(name(name)+"# # ")) ){
					printRecord(new String(record));
				}else System.out.println("Record not found");
				break;
			case 3: //quits
				quit= true;
			}
		}while(!quit);
	}
	//print each record with the correct format
	private static void printRecord(String x){
		String name = removeWhiteSpace(x.substring(0,27));
		String Country = removeWhiteSpace(x.substring(27,54));
		String atttude = removeWhiteSpace(x.substring(54, 60));
		System.out.println(name+", "+Country+", "+atttude);
	}
	//removes trailing white spaces of a string
	private static String removeWhiteSpace(String x){
		String y="";
		boolean empty = true;
		for(int i = x.length()-1; i>=0;i--){
			if(!empty || x.charAt(i) != 0 ){
				empty = false;
				y=x.charAt(i)+y;
			}
		}
		return y;
	}
	//gets the records from the user 
	private static String getRecord(Scanner in){
		String x="";
		System.out.print("Enter Name: ");
		x+= in.nextLine()+"#";
		System.out.print("Enter Country: ");
		x+= in.nextLine()+"#";
		System.out.print("Enter altitude: ");
		x+= in.nextLine();
		
		return x;
	}
	//creates the menu 
	private static void printMenu(){
		System.out.print("\nInsert new record: 1\n"
				+ "Find record: 2\n"
				+ "Quit: 3\n: ");
	}
	private static String name(String x){
		if(x.contains(",")){
			return x;
		}
		String[]name = x.split(" ");
		return name[1]+", "+name[0];
		
	}
	//formats the record to a char array 
	private static char[] formatrecord(String x){
		//splits the String into 3 parts and adds spaces 
		//returns a char array of lenght 60
		String []t = x.split("#"); 
		char[] formatted = new char[60];
		char[]t1 = t[0].toCharArray();
		for(int i = 0; i<t1.length&& i<27; i++){
			formatted[i]=t1[i];
		}
		t1 = t[1].toCharArray();
		for(int i = 27; i<t1.length+27 &&i<54; i++){
			formatted[i]=t1[i-27];
		}
		t1 = t[2].toCharArray();
		for(int i = 54; i<t1.length+54 &&i<60; i++){
			formatted[i]=t1[i-54];
		}
		return formatted;
	}
}