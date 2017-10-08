
public class AVLTree <T extends Comparable> {
	
	
	AVLNode root;
	
	public AVLTree(){
		root =null;
	}
	
	public boolean isEmpty(){
		return root ==null;
	}
	
	public void makeEmpty(){
		root = null;
	}
	
	
	public void insert(T data){
		if(root == null){
			root = new AVLNode(data);
		}else
			insert(data, root);
			
	}
	private int height (AVLNode t){
		return t == null ? -1 : (int)t.height;
	}
	
	private int max(int lhs, int rhs){
		return lhs > rhs ? lhs : rhs;
	}
	
	
	private AVLNode insert(T data, AVLTree<T>.AVLNode t) {
		
		if(data.compareTo(t.data)<0){
			t.Left = insert(data, t.Left);
			if(height(t.Left)-height(t.Right) ==2 ){
				if(data.compareTo(t.data)<0)
					t = roateWithLeftChild(t);
				else 
					t = doubleWithLeftChild(t);
				
			}
			
		}
		else if(data.compareTo(t.data)>0){
			t.Right = insert(data, t.Right);
			if(data.compareTo(t.data)>0)
				t = roateWithRightChild(t);
			else
				t = doubleWithRighChild(t);
		}
		t.height = max(height(t.Left), height(t.Right));
		return t;
	}

	private AVLTree<T>.AVLNode roateWithLeftChild(AVLTree<T>.AVLNode t) {
		AVLNode t1 = t.Left;
		t.Left = t1.Right;
		t1.Right = t;
		t.height = max(height(t.Left), height(t.Right)) +1 ;
		t1.height = max(height(t1.Left), height(t1.Right)) +1;
		return t1;
	}
	
	private AVLTree<T>.AVLNode roateWithRightChild(AVLTree<T>.AVLNode t) {
		AVLNode t1 = t.Right;
		t.Right = t1.Left;
		t1.Left = t;
		
		t.height = max(height(t.Left), height(t.Right)) +1 ;
		t1.height = max(height(t1.Left), height(t1.Right)) +1;
		return t1;
	}

	private AVLNode doubleWithRighChild(AVLNode K1){
		K1.Right =  roateWithLeftChild(K1.Right);
		return this.roateWithRightChild(K1);
	}
	
	private AVLNode doubleWithLeftChild(AVLNode K1){
		K1.Left = roateWithRightChild(K1.Left);
		return roateWithLeftChild(K1);
	}



















	private class AVLNode{
		T data;
		int height;
		AVLNode Left, Right;
		
		public AVLNode(){
			Left = null;
			Right =null;
			data = null;
			height = 0;
			
		}
		
		public AVLNode(T data){
			this();
			this.data =data; 
		}
	}
}
