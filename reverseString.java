public class Solution {
	public String reverseWords(String a) {
	    
	    if(a == null || a.length() == 1)
	        return a;
	        
	        
	   StringBuilder result = new StringBuilder();
	   
	   for(int i=0; i<a.length(); i++){
	       int start = i;
    	   
    	   while(a.charAt(i) != ' '){
    	       i++;
    	       if(i == a.length())
    	        break;
    	   }
    	   
    	   int stop = i;
    	   String word = a.substring(start, stop);
    	   
    	   result.insert(0,word);
    	   result.insert(0," ");
	   }
	 
	   return result.toString().trim();
	}
}
