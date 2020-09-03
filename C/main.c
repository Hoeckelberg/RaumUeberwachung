#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>
#include <time.h>

#define PATH "data.dat"
#define PIN_T1 22
#define PIN_T2 23

int counter;
void createFileIfNotExists();
int readCurrentCount();
void increaseCount();
void decreaseCount();
time_t t1;

int main()
{
    t1 = time(NULL);

    wiringPiSetup();

    pinMode(PIN_T1, INPUT);
    pinMode(PIN_T2, INPUT);

    pullUpDnControl(PIN_T1, PUD_DOWN);
    pullUpDnControl(PIN_T2, PUD_UP);

    createFileIfNotExists();
    counter = readCurrentCount();

    wiringPiISR(PIN_T1, INT_EDGE_FALLING, &increaseCount);
    wiringPiISR(PIN_T2, INT_EDGE_RISING, &decreaseCount);


    while(1){
        delay(1000);
    }

    return 0;
}
void createFileIfNotExists(){
    FILE* file = fopen(PATH, "r");

    if(!file){
        file = fopen(PATH, "w");
        fprintf(file, "0");
    }

    fclose(file);
}

int readCurrentCount(){
    FILE* file = fopen(PATH, "r");
    char* buffer = (char*)malloc(11*sizeof(char));

    fgets(buffer, 11, file);
    fclose(file);

    return atoi(buffer);
}

void increaseCount(){
    if (time(NULL)-t1<1)
        return;
    t1 = time(NULL);

    FILE* file = fopen(PATH, "w");
    counter++;
    fprintf(file, "%i", counter);
    fclose(file);
    printf("Increase to: %i", counter);
}

void decreaseCount(){
    if (time(NULL)-t1<1)
        return;
    t1 = time(NULL);

    FILE* file = fopen(PATH, "w");
    counter--;
    fprintf(file, "%i", counter);
    fclose(file);
    printf("Decrease to: %i", counter);
}
