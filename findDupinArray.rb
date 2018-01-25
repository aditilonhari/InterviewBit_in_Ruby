public class Solution {
	// DO NOT MODIFY THE LIST
	public int repeatedNumber(final List<Integer> a) {
	    if(a.size() == 0)
	        return 0;
	       
	   int maxN = 0;    
	   int given_sum = 0;
	   for(int i: a){
	       if(i > maxN)
	           maxN = i;
	       given_sum += i;
	   }
	   
	  int actual_sum = (maxN*(maxN+1))/2;
	   
	   int diff = Math.abs(actual_sum - given_sum);
	   
	   return diff;
	}
}
