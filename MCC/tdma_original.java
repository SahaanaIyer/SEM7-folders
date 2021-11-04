import java.util.*;
import java.lang.*; 
import java.io.*;

public class tdma_original {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in); 
        int i; 
        int t=0;
        int users[] = new int[10];
        for(i=0; i<10; i++) {
            System.out.print("Enter delay for channel " + (i + 1) + ": ");
            users[i] = sc.nextInt(); 
        }
        System.out.println();  
        System.out.println("Cycle 1 allotment is as follows"); 
        for(i=0; i<10; i++) {
            if(users[i] > 10) {
                System.out.println("Channel " + (i + 1) + " has not been assigned any slot");
                continue;
            }
            System.out.println("Channel " + (i + 1) + " has been assigned slot " + t + " to " + (t + 417)); 
            t += 418;
        }
        t = 0;
        System.out.println();
        System.out.println("Cycle 2 slot allotment is as follows"); 
        for(i=0; i<10; i++) {
            if(users[i] < 10){
                System.out.println("Time slot " + t + " to " + (t + 417) + " has not been assigned any slot");
            }
            else {
                System.out.println("Channel " + (i + 1) + " has been assigned slot " + t + " to " + (t + 417));
            }
            t += 418; 
        }
    }
}

/* OUPUT :

Enter delay for channel 1: 1
Enter delay for channel 2: 10
Enter delay for channel 3: 2
Enter delay for channel 4: 30
Enter delay for channel 5: 50
Enter delay for channel 6: 6
Enter delay for channel 7: 20
Enter delay for channel 8: 4
Enter delay for channel 9: 50
Enter delay for channel 10: 100

Cycle 1 allotment is as follows
Channel 1 has been assigned slot 0 to 417
Channel 2 has been assigned slot 418 to 835
Channel 3 has been assigned slot 836 to 1253
Channel 4 has not been assigned any slot
Channel 5 has not been assigned any slot
Channel 6 has been assigned slot 1254 to 1671
Channel 7 has not been assigned any slot
Channel 8 has been assigned slot 1672 to 2089
Channel 9 has not been assigned any slot
Channel 10 has not been assigned any slot

Cycle 2 slot allotment is as follows
Time slot 0 to 417is idle
Channel 2 has been assigned slot 418 to 835
Time slot 836 to 1253is idle
Channel 4 has been assigned slot 1254 to 1671
Channel 5 has been assigned slot 1672 to 2089
Time slot 2090 to 2507is idle
Channel 7 has been assigned slot 2508 to 2925
Time slot 2926 to 3343is idle
Channel 9 has been assigned slot 3344 to 3761
Channel 10 has been assigned slot 3762 to 4179
*/