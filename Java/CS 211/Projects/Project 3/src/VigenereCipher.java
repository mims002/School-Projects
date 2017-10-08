
public class VigenereCipher extends SymmetricCipher {

	//The password, used to generate shift values.
	protected String password;
	//Records the current location in a String that is being crypted
	protected int passwordPos;
	
	//The constructor initializes the data members.
	public VigenereCipher(String password,Alphabet alphabet){
		super(alphabet);
		this.password	=	password;
	}
	//The constructor initializes the data members w default alphabet
	public VigenereCipher(String password) {
		this(password,Alphabet.DEFAULT);
	}
	
	//Returns password
	public String getPassword(){
		return this.password;
	}

	//Relies upon password and passwordPos to encrypt a single char.
	@Override
	protected char encrypt1(char c){
		
		//finds the index of the password
		int passLocation	=	alphabet.indexOf(password.charAt(passwordPos));
		////finds the index of the character to be encrypted 
		int cLocation 		= 	alphabet.indexOf(c);
		
		//advances the passPos or resets it
		this.passwordPos	= 	(++passwordPos>=password.length()) ? 0:passwordPos;
		//System.out.println("sss");
		
		//return the char at the subtracted index 
		return(super.alphabet.get(super.wrapInt(cLocation+passLocation)));

	}

	//Relies upon password and passwordPos to decrypt a single char
	@Override
	protected char decrypt1(char c) {
		
		//finds the index of the password
		int passLocation	=	alphabet.indexOf(password.charAt(passwordPos));
		////finds the index of the character to be encrypted 
		int cLocation 		= 	alphabet.indexOf(c);
		
		//advances the passPos or resets it
		this.passwordPos	= 	(++passwordPos>=password.length()) ? 0:passwordPos;
		
		//return the char at the subtracted index 
		return(super.alphabet.get(super.wrapInt(cLocation-passLocation)));
	}
	//Initializes passwordPos to 0, and then invokes the parent class's version of encrypt
	@Override
	public String encrypt(String s){
		this.passwordPos=0;
		return super.encrypt(s);
	}
	//Initializes passwordPos to 0, and then invokes the parent class's version of decrypt
	@Override
	public String decrypt(String s){
		this.passwordPos=0;
		return super.decrypt(s);
	}
	//returns the password in String
	@Override
	public String toString(){
		return(String.format("Vigenere Cipher (password='%s')",this.password));
	}
		
}
