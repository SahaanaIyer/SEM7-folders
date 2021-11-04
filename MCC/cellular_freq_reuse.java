// To find the co-channel cells for a particular cell

import java.util.*;

class cellular_freq_reuse {
    public static int cocell1 (int base ,int i, int j, int t) {
    	int a = base+i;
    	for (int k=0 ; k<j ; k++) {
    		if (k%2 == 0) a -= 9;
    		else a -= 10;
    	}
    	if (t == 0 && i>=j) a--;
    	return a;
    }
    
    public static int cocell2 (int base ,int i, int j, int t) {
    	int a = base;
    	for (int k=0 ; k<i ; k++) {
    		if (k%2 == 0) a -= 9;
    		else a -= 10;
    	}
    	if (i%2 == 0) {
    		for (int k=0 ; k<j ; k++) {
    			if (k%2 == 0) a -= 10;
    			else a -= 11;
    		}
    		if (t == 0 && i>=j) a--;
    		return a;
    	}
    	else {
    		for (int k=0 ; k<j ; k++) {
    			if (k%2 == 0) a -= 11;
    			else a -= 10;
    		}
    		if (t == 0 && i>=j) a--;
    		return a;
    	}
    }
    
    
    public static int cocell3 (int base ,int i, int j, int t) {
    	int a = base;
    	for (int k=0 ; k<i ; k++) {
    		if (k%2 == 0) a -= 10;
    		else a -= 11;
    	}
    	a -= j;
    	return a;
    }
    
    
    public static int cocell4 (int base ,int i, int j, int t) {
    	int a = base-i;
    	for (int k=0 ; k<j ; k++) {
    		if (k%2 == 0) a += 10;
    		else a += 9;
    	}
    	if (t == 0 && i>=j) a--;
    	return a;
    }
    
    
    public static int cocell5 (int base ,int i, int j, int t) {
    	int a = base;
    	for (int k=0 ; k<i ; k++) {
    		if(k%2 == 0) a += 10;
    		else a += 9;
    	}
    	if (i%2 == 0) {
    		for (int k=0 ; k<j ; k++) {
    			if(k%2 == 0) a += 11;
    			else a += 10;
    		}
    		if (t == 0 && i>=j) a--;
    		return a;
    	}
    	else {
    		for (int k=0 ; k<j ; k++) {
    			if(k%2 == 0) a += 10;
    			else a += 11;
    		}
    		if (t == 0 && i>=j) a--;
    		return a;
    	}
    }
    
    
    public static int cocell6 (int base ,int i, int j, int t) {
    	int a = base;
    	for( int k=0 ; k<i ; k++) {
    		if (k%2 == 0) a += 11;
    		else a += 10;
    	}
    	a += j;
    	return a;
    }
    
    public static void main (String[] args) {
    	Scanner sc = new Scanner (System.in);
    	System.out.println("Enter values of i, j : ");
    	int i = sc.nextInt();
        int j = sc.nextInt();
    	int n = i * i + i * j + j * j;
        System.out.println("N : " + n);
    
        System.out.println("Enter base value : ");
    	int base = sc.nextInt();

        System.out.println("Enter the value of c1 to c6 : ");
    	int a1 = sc.nextInt();
        int a2 = sc.nextInt();
        int a3 = sc.nextInt();
        int a4 = sc.nextInt();
        int a5 = sc.nextInt();
        int a6 = sc.nextInt();
    
        int t = 0;
        int tmp = (base - (base % 10)) / 10;
        if (tmp % 2 != 0) t=1;
        else t=0;
        
        System.out.println("The co-channel cells are : ");
        int c1 = cocell1 (base, i, j, t);
        System.out.println("c1 : " + c1);
        int c2 = cocell2 (base, i, j, t);
        System.out.println("c2 : " + c2);
        int c3 = cocell3 (base, i, j, t);
        System.out.println("c3 : " + c3);
        int c4 = cocell4 (base, i, j, t);
        System.out.println("c4 : " + c4);
        int c5 = cocell5 (base, i, j, t);
        System.out.println("c5 : " + c5);
        int c6 = cocell6 (base, i, j, t);
        System.out.println("c6 : " + c6);
        
    	int score = 0;
    	if(a1 == c1) score++;
    	if(a2 == c2) score++;
    	if(a3 == c3) score++;
    	if(a4 == c4) score++;
    	if(a5 == c5) score++;
    	if(a6 == c6) score++;
        System.out.println("Your score is : " + score);
    }
}