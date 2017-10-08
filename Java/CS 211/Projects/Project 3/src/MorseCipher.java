public class MorseCipher  extends Cipher {
	  
	//Morse code conversion with matching index
	public static final String letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	public static final String[] codes = {
	    ".-",    /* A */
	    "-...",  /* B */    
	    "-.-.",  /* C */    
	    "-..",   /* D */
	    ".",     /* E */    
	    "..-.",  /* F */    
	    "--.",   /* G */    
	    "....",  /* H */
	    "..",    /* I */    
	    ".---",  /* J */    
	    "-.-",   /* K */    
	    ".-..",  /* L */
	    "--",    /* M */    
	    "-.",    /* N */    
	    "---",   /* O */    
	    ".--.",  /* P */
	    "--.-",  /* Q */    
	    ".-.",   /* R */    
	    "...",   /* S */    
	    "-",     /* T */
	    "..-",   /* U */    
	    "...-",  /* V */    
	    ".--",   /* W */    
	    "-..-",  /* X */
	    "-.--",  /* Y */    
	    "--..",  /* Z */    
	    ".----", /* 1 */    
	    "..---", /* 2 */
	    "...--", /* 3 */    
	    "....-", /* 4 */    
	    ".....", /* 5 */    
	    "-....", /* 6 */
	    "--...", /* 7 */    
	    "---..", /* 8 */    
	    "----.", /* 9 */    
	    "-----", /* 0 */
	  };
		
	//creates a new alphabet variable
	Alphabet alphabet;
	//The constructor uses letters to fill in its alphabet field.
	public MorseCipher(){
		  this.alphabet=new Alphabet(MorseCipher.letters);		  
		  }

	/*Converts a string of letters, digits, and spaces to the 
	 * corresponding morse code representation.
	 *  All lowercase letters are implicitly converted to 
	 *  uppercase during encryption.
	 */
	@Override
	public String encrypt(String s) {
		//converted the String to array
		char[]message= s.toCharArray();
		
		//Initializes the output variable
		String encrypted="";
		
		//loops through the passed s
		for(int index=0;index<s.length();index++){
			//converts the current character to uppercase
			char toCheck = (message[index]+"").toUpperCase().charAt(0);
			//finds the position of character that corresponds with 
			//Mores code
			if(toCheck!=' '){
				//fins the index that the Alphabet 
				int pos = alphabet.indexOf(toCheck);
				//adds the morse to String encrypted
				encrypted+= MorseCipher.codes[pos];
			}
			//when there is a space detected adds the corresponding space
			else
				encrypted+=" ";
			
			//adds space after a character
			encrypted+="   ";
				
		}
		//returns the encrypted String removing the end spaces 
		return (encrypted.substring(0,encrypted.length()-3)) ;
			
	}
		@Override
		public String decrypt(String s) {
			//converted the String to array with a extra space to determines
			//ending 
			char[]message= (s+" ").toCharArray();
			
			//variable that will store decrypted values
			String decrypted="";
			
			//temporary varibale to store a whole letter or number
			String letter="";
			//loops through each symbol in passed message s
			for(int i =0; i<message.length;i++){
				//when a space is founds it checks if it matches any
				//morse code. then takes the corresponding index to find the 
				//letter to add to decrypted string.
				if(message[i]==' '){
					for(int rep=0;rep<codes.length;rep++){
						if(letter.equals(codes[rep])){
							decrypted+=alphabet.get(rep);
							letter="";
						}
					}
					//adds a space in decrypted message if 7 spaces are detected
					if (i+7<s.length() && s.substring(i, i+7).equals("       "))
						decrypted+=" ";
				}
				//adds every symbol of morse code until a space it found to letter
				else
					letter+=message[i];
			}
			// returns the decrrypted String
			return (decrypted);
		}
	  
	}