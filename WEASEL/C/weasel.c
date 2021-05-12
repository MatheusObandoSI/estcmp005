#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define NUM_OFFSPRINGS 100
#define MAX_SCORE 28

char target[28] = {"METHINKS IT IS LIKE A WEASEL"};

typedef struct child
{
    char text[28];
    int score;
}
child;

child current;

void generateRandomString(child *input)
{
    for(int i = 0; i < 28; i++)
    {
        input->text[i] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "[random () % 27];
    }
}

void evaluate(child *input)
{
    int score = 0;
    for(int i = 0; i < 28; i++)
    {
        if((input->text[i] == target[i]) == 1)
        {
            score++;
        }
    }
    input->score = score;
}

void reproduce(child *childs)
{
    for(int i = 0; i < NUM_OFFSPRINGS; i++)
    {
        childs[i] = current;
    }
}

void mutate(child *childs)
{
    for(int i = 0; i < NUM_OFFSPRINGS; i++)
    {
        for(int j = 0; j < 28; j++)
        {
            if(rand() % 100 < 5)
            {
                childs[i].text[j] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "[random () % 27];
            }
        }
        evaluate(&childs[i]);
    }
}

void evolve(child *childs)
{
    for(int i = 0; i < NUM_OFFSPRINGS; i++)
    {
        if(childs[i].score > current.score)
        {
            current = childs[i];
        }
    }
}

void main()
{
    srand(time(NULL));
    generateRandomString(&current);
    evaluate(&current);
    child childs[100];

    while(current.score < MAX_SCORE)
    {
        reproduce(childs);
        mutate(childs);
        evolve(childs);
        for(int i = 0; i < 28; i++)
        {
            printf("%c", current.text[i]);
        }
        printf(" - SCORE: %d\n", current.score);
    }

}