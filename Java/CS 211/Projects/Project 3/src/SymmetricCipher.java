public abstract class SymmetricCipher extends Cipher {
	
	//The alphabet that this cipher works on
	protected Alphabet alphabet;
	
	//Child classes must provide an implementation of this; 
	//it provides a way to encrypt a single character. 
	protected abstract char encrypt1(char c);
	
	//Child classes must provide an implementation of this;
	//it provides a way to decrypt a single character. 
	protected abstract char decrypt1(char c);
	
	
	//The constructor initializes the data member.
	public SymmetricCipher(Alphabet alphabet) {
		this.alphabet=alphabet;	
	}
	
	/*Given an index value that may be outside the 
	**range of valid indexes into the alphabet, 
	**wrap it back around to a valid index.*/
	public int wrapInt(int i){
		
		//loops through and adds or subtracts the length of alphabet
		//from the given int
		//if i is bigger than or less than alphabet length 
		while(i>=this.alphabet.length()|| i<0)
			if(i>0)
				i-=this.alphabet.length();
			else
				i+=this.alphabet.length();
		
		return i;
	}
	
	/*Given an index into the alphabet, 
	 * rotates it around shift times to the resulting valid index 
	 * into alphabet. 
	 */
	public int rotate(int index, int shift){		
		return wrapInt(index+shift);
	}
	
	//public Alphabet getAlphabet().
	public Alphabet getAlphabet(){
		return this.alphabet;
	}
	// uses child class encrypt1 to encrypt the whole thing
	public String encrypt(String s){
		//converts String to array so it can be used to add encryption
		char[]stringArray=s.toCharArray();
		//loops through each character in string 
		for(int i=0; i<s.length();i++){
			stringArray[i]=this.encrypt1(s.charAt(i));	
		}
		//returns the String value
		return String.copyValueOf(stringArray);
	}
	
	// uses child class decrypt1 to encrypt the whole thing
	public String decrypt(String s){
		//converts String to array so it can be used to add encryption
		char[]stringArray=s.toCharArray();
		//loops through each character in string 
		for(int i=0; i<s.length();i++){
			stringArray[i]=this.decrypt1(s.charAt(i));	
		}
		//returns the String value
		return String.copyValueOf(stringArray);
		
	}


}
