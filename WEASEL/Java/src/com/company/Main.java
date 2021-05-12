package com.company;

public class Main {

    public static final int NUM_OFFSPRINGS = 100;
    public static final int MAX_SCORE = 28;
    public static final String TARGET = "METHINKS IT IS LIKE A WEAZEL";
    public static final String ALPHA = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ";

    public static void main(String[] args) throws CloneNotSupportedException {
        Weasel weaselProgram = new Weasel();
        weaselProgram.startProgram();
    }
}
