
public class BST <T extends Comparable> {

	
	private BSTnode<T> root;
	
	public T search(T target){
		BSTnode temp = root;
		while (temp != null && target.compareTo(temp.data) !=0){
			if(target.compareTo(temp.data)<0)
				temp = temp.left;
			else
				temp = temp.right;
		}
		if(temp.data == null)
			return null;
		
		return (T) temp.data;
	}
	
	public boolean insert(T value){
		if (root == null){
			root = new BSTnode<T>(value);
		}
		return insert(value,root);
	}
	
	@SuppressWarnings("unchecked")
	public boolean insert(T value, BSTnode<T> temp){
		int c = value.compareTo(temp.data);
		
		if(c==0){
			return false;
		}
		if(c<0){
			if(temp.left ==null){
				temp.left = new BSTnode<T>(value);
				return true;
			}
			else
				insert(value,temp.left);
		}
		if(c>0){
			if(temp.right == null){
				temp.right= new BSTnode<T>(value);
				return true;
			}
			else
				insert(value,temp.right);
		}
		
		return false;
	}
	private class BSTnode<T extends Comparable>{
		T data;
		BSTnode<T> left, right;
		public BSTnode(T data){
			this.data= data;
		}
		
		public boolean remove(T value, BSTnode<T> temp){
			if(value.compareTo(temp.data)< 0 ){
				if(left != null)
					return left.remove(value, this.left);
				else
					return false;
			}
			else if(value.compareTo(this.data) >0){
				if(right != null)
					return right.remove(value, this.right);
				else 
					return false;
			}
			else{
				if(this.left != null && this.right !=null){
					this.data = (T) right.minValue();
					right.remove(this.data, this);
				}else if(temp.left != null)
					temp = temp.left;
				else if(temp.right !=null)
					temp = temp.right;
				else 
					temp = null;
			}
			
			return true;
		}
		
		public T minValue(){
			if(left == null)
				return data;
			else 
				return (T) left.minValue();
		}
	
	}
}
