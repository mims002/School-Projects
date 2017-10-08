


/*
 * Alphabet represents the set of characters that
 * will be allowed in some message. For different messages, 
 * we can choose to use different Alphabet objects.
 */
public class Alphabet {
	
	//Stores the current symbols object
	private String symbols;
	//A automatically generated alphabet for objects to use
	public static final Alphabet DEFAULT = new Alphabet("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz 1234567890!@#$%^&*()_+-=[]{}\\|;:'\",./?<>");

	
	// The constructor initializes symbols
	public Alphabet(String symbols){
		
		this.symbols=symbols;
	}
	
	//Returns the index of char parameter c in string symbols
	public int indexOf(char c){
		//if character not found throws Exception
		if(!this.symbols.contains(c+"")){
			throw new NotInAlphabetException(c,this);
		}
		//returns the symbol
		return symbols.indexOf(c);
	}
	
	//Returns the char at position i of symbols
	public char get(int i) {
		//if not character at index i throws Exception
		try
		{
			return this.symbols.charAt(i);
		}catch (Exception e)
		{
			throw new NotInAlphabetException('x', this);
		}
	}
	
	//Returns symbols
	public String getSymbols() {

		return this.symbols;
	}
	
	//Returns the length of string symbols.
	public int length(){
		return this.symbols.length();
	}
	
	//checks if two object alphabet symbols are the same
	@Override
	public boolean equals(Object other){
		//checks if its object of Alphabet 
		if ((other instanceof Alphabet))
		{
			//checks both symbol class 
			return ((Alphabet)(other)).getSymbols().equals(this.getSymbols());
		}
		return false;
	}
	
	//String representation of Symbols
	@Override 
	public String toString(){
		return String.format("Alphabet(%s)",this.symbols);
	}
	


	
} 

