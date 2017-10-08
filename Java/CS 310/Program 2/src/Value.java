/* Value.java
*  Mrinmoy Mondal
*  mmondal
*/
//holds the value of each node 
public class Value {
		//holds the data 
		private double dval;
		private String sval;
		//knows which is the real, tagfield
		boolean isDval,tag;
		
		public Value(){
			tag = false;
			isDval=false;
			dval =0;
			sval = null;
		}
		
		//sets the sval
		public void setSval(String s){
			this.sval = s;
			tag = true;
			isDval = false;
		}
		//alows to set the value for node
		public void setVal(String data){
			if(data.charAt(0) == '"')
				setSval(data.substring(1, data.length()));
			else 
				setDval(Double.parseDouble(data));
		}
		
		//sets the sval
		public void setDval(double d){
			this.dval = d;
			isDval = true;
			tag = true;
		}
		//returns the dval
		public double getDBL(){
			
			return this.dval;
			
		}
		//formats the output so it matches convention 
		public String formatted(){
			if (Double.parseDouble(String.format("%.5f", dval)) == this.dval)
				//if dval is an int returns int
				if((int)dval == dval)
					return (int)dval + "";
				else
					return (this.dval) +"";
			else //formats to 5 decimal places 
				return String.format("%.5f", dval); 
		}
		//returns the value as a string
		@Override
		public String toString(){	
			return tag ? ((isDval ? formatted() : sval )) : "";
			}
}
