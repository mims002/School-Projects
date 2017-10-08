
public class BinaryTree <T extends Comparable>{

	
	public void preorder(){
		if(n!=null){
			//visit n
			preorder(n.left);
			postorder(n.right);
		}
	}
	
}
