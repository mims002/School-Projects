/* Node.java
*  Mrinmoy Mondal
*  mmondal
*/

//Node class represents what value each cell has
//it also has the next instance right or down 
public class Node {

	//next instance of the noDe
	Node down,right;
	//holds the value
	Value val;
	//constructor
	public Node(){
		val = new Value();
	}
	//adds two nodes together 
	public void add(Node src, Node des){
		//if the two values aren't valid it doesn't do anything
		if(!(src.val.isDval && this.val.isDval)){
			return;
		}
		des.val.setDval(src.val.getDBL()+this.val.getDBL());
	}
	//subtracts two nodes
	public void sub(Node src, Node des){
		//if the two values aren't valid it doesn't do anything
		if(!(src.val.isDval && this.val.isDval)){
			return;
		}
		des.val.setDval(src.val.getDBL()-this.val.getDBL());
	}
	//multiplies two nodes
	public void mult(Node src, Node des) {
		//if the two values aren't valid it doesn't do anything
		if(!(src.val.isDval && this.val.isDval)){
			return;
		}
		des.val.setDval(src.val.getDBL()*this.val.getDBL());	
	}
	//divides two nodes
	public void div(Node src, Node des) {
		//if the two values aren't valid it doesn't do anything
		if(!(src.val.isDval && this.val.isDval && this.val.getDBL()!=0)){
			/*des.val.tag = false;
			des.val.isDval= false;
			*/
			return;
		}
		des.val.setDval(src.val.getDBL()/this.val.getDBL());
		
	}
	
}
