public class NotInAlphabetException extends RuntimeException{
	// declares the object variables that cannot be changed
		//msg stores the message 
	public final String msg; 
		//stores the character that was not found
	public final char offender; 
		//stores the obejct Alphabet
	public final Alphabet a; 

	//initializes all the field variables 
	public NotInAlphabetException(String message,char offender, Alphabet a){
		//calls the super class to throw a RuntimeException
		super();
		this.offender=offender;
		this.a=a;
		this.msg=message;
	}
	//initializes the msg and the field variables 
	public NotInAlphabetException(char offender, Alphabet a){
		this(String.format("Not in alphabet: '%s' not found in %s.",offender,a),offender,a);
	}
	//return the msg
	public String toString(){
		return msg;
	}
}