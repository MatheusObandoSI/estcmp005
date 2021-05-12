package com.company;
import java.util.ArrayList;

public class Child implements Cloneable
{
    public ArrayList<Character> text;
    public int score;

    Child(){}

    Child(ArrayList<Character> text)
    {
        this.text = text;
    }

    @Override
    public String toString() {
        StringBuilder strBuilder = new StringBuilder(text.size());
        for(Character ch: text)
        {
            strBuilder.append(ch);
        }
        
        return String.format("%s - SCORE: %d", strBuilder.toString(), score);
    }

    @Override
    public Object clone() throws CloneNotSupportedException
    {
        Child child = (Child) super.clone();
        child.text = (ArrayList<Character>) text.clone();
        return child;
    }
}
