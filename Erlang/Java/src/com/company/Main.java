package com.company;
import java.lang.*;
import java.text.DecimalFormat;
import java.text.NumberFormat;

class MiniThread extends Thread {
    int n;
    MiniThread(int m) { n=m; }
    public void run() {
        do { Thread.yield(); n--; } while (n>0);
    }
}
public class Main {
    public static void main(String[] argv) throws InterruptedException {
        long start = System.currentTimeMillis();
        int threads = Integer.parseInt(argv[0]);
        int times   = Integer.parseInt(argv[1]);
        for(int i=threads;i>0;i--) {
            MiniThread t = new MiniThread(times);
            t.start();
            t.join();
        }
        long end = System.currentTimeMillis();
        NumberFormat formatter = new DecimalFormat("#0.00000");
        System.out.print("Execution time is " + formatter.format((end - start) / 1000d) + " seconds");
        
    }
}


//To execute on terminal use on ./src directory:
//javac com/company/Main.java
//java com.company.Main arg[0] arg[1]