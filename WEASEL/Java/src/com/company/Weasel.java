package com.company;
import java.util.Random;
import java.util.ArrayList;

public class Weasel {

    private ArrayList<Child> childs;
    private Child currentChild;

    public Weasel()
    {
        childs = new ArrayList<Child>();
        currentChild = new Child();
    }

    public void generateRandomString(Child input)
    {
        ArrayList<Character> rand_string = new ArrayList<Character>();
        Random rand = new Random();
        for(int i = 0; i < Main.MAX_SCORE; i++)
        {
            rand_string.add(Main.ALPHA.charAt((rand.nextInt(27))));
        }
        input.text = rand_string;
    }

    public int evaluate(Child input)
    {
        int value = 0;
        for(int i = 0; i < Main.TARGET.length(); i++)
        {
            if(input.text.get(i) == Main.TARGET.charAt(i))
            {
                value++;
            }
        }
        return value;
    }

    public void reproduce() throws CloneNotSupportedException {

        childs.clear();
        for(int i = 0; i < Main.NUM_OFFSPRINGS; i++)
        {
            Child copy = (Child) currentChild.clone();
            childs.add(copy);
        }
    }

    public void mutate()
    {
        Random rand = new Random();
        for(int i = 0; i < Main.NUM_OFFSPRINGS; i++)
        {
            for (int j = 0; j < Main.TARGET.length(); j++)
            {
                if(rand.nextInt(100+1) <= 5)
                {
                    childs.get(i).text.set(j, Main.ALPHA.charAt((rand.nextInt(27))));
                }
            }
            childs.get(i).score = evaluate(childs.get(i));
        }
    }

    public void evolve()
    {
        for(int i = 0; i < Main.NUM_OFFSPRINGS; i++)
        {
            if(childs.get(i).score > currentChild.score)
            {
                currentChild = childs.get(i);
            }
        }
    }

    public void startProgram() throws CloneNotSupportedException {
        generateRandomString(currentChild);
        evaluate(currentChild);

        System.out.println(currentChild);

        while(currentChild.score < Main.MAX_SCORE)
        {
            reproduce();
            mutate();
            evolve();

            System.out.println(currentChild);
        }
    }
}
