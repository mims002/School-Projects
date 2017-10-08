public class CaesarCipher extends SymmetricCipher  {
	
	//The shift that this cipher uses to adjust 
	//characters during encryption/decryption.
	protected int shift;
	
	
	//The constructor stores the shift and alphabet.
	public CaesarCipher(int shift, Alphabet alphabet){
		super(alphabet);
		this.shift=shift;
	}
	
	//This constructor stores the shift and 
	//uses the default Alphabet found in Alphabet.DEFAULT
	public CaesarCipher(int shift){
		this(shift,Alphabet.DEFAULT);
	}
	
	//Decrypt and Encrypt are inherited from super class
	
	@Override
	//Encrypts and returns a single character based on the 
	//shift and the alphabet in use
	protected char encrypt1(char c) {
		//uses rotate to find the proper index then shifts
		return alphabet.get(super.rotate(alphabet.indexOf(c), this.shift));
	}
	//Decrypts and returns a single character based on the
	//shift and the alphabet in use
	@Override
	protected char decrypt1(char c) {
		//uses rotate to find the proper index then shifts backwards
		return alphabet.get(super.rotate(alphabet.indexOf(c), -1*this.shift));
	}
	//returns the number of shift in string
	public String toString(){
		return String.format("Caesar Cipher (shift=%d)",this.shift);
	}
	
	

}
