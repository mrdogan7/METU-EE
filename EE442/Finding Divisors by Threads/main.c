// Emre Dogan
// 2093656
// EE442 HW2

// **** REFERENCES **** 

// 1. For the circular queue implementation, I referenced from the link given below.
//        http://www.techiedelight.com/circular-queue-implementation-c/
// 2.  For passing arguments from the terminal, I referenced from the following link.
//        https://stackoverflow.com/questions/17877368/getopt-passing-string-parameter-for-argument?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa




#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include "queue.h"



pthread_mutex_t mutex;

// struct to send the input data of the threads to the functions "generate" and "consume".
typedef struct intPacket {
        int numOfRand;
        int RangeOfRand;
        queue* mainQueue;
        int numberWorkers;
        int still_generating;
 
} intPacket;

// the function for the worker threads to find the divisors.
void *consume(void *args){

    while (1) {
        pthread_mutex_lock(&mutex);
        int numbRand = ((intPacket*)args) -> numOfRand;
        // int numbRand = 20;
        int rangeRand = ((intPacket*)args) -> RangeOfRand;
        queue* mainQueue = ((intPacket*)args) -> mainQueue;    

        if (size(mainQueue) != 0) {
            int g = front(mainQueue);

            // printf("The Thread ID: %d  \n",pid_worker1 );  
            printf("Worker Thread ID = %lu ", pthread_self());
            printf("The number is: %d  \n",g);
            printf("Divisors of the Number: ");

            for (int i=1;i<=g;i++){
                if (g%i==0)
                    printf(" %d ", i);
            }
            printf("\n\n\n " );


            dequeue(mainQueue);
            //printf("%d is extracted \n",g ); 
        } 
        // else {
        //     //if (CurrentWorkerNo != 0){
        //         CurrentWorkerNo--;
        //     //}
        //     printf("Queue is empty. Not extracted! \n");
        // }

        pthread_mutex_unlock(&mutex);
        sleep(1);
    }
    return 0;
}   



// generate function to create the random numbers and insert them to the queue. 
void *generate(void* args)
{   
    queue* mainQueue = ((intPacket*)args) -> mainQueue;
    int numbRand = ((intPacket*)args) -> numOfRand;
    int rangeRand = ((intPacket*)args) -> RangeOfRand;
    int numberOfWorkers = ((intPacket*)args) -> numberWorkers;
    int forNum = mainQueue -> maxsize;
    int r,a;
    int queueRemain = mainQueue -> maxsize;
    int queueRemain2 = ((intPacket*)args) -> numOfRand;

        while(1) {
        pthread_mutex_lock(&mutex);

        if (mainQueue -> size == 0){

            if (queueRemain2 < queueRemain){
                if (queueRemain2 != 0 && queueRemain2 > 0) {
                    forNum = queueRemain2;
                } else {
                    forNum = 0;
                    ((intPacket*)args) -> still_generating = 0;
                    break;
                }
            }

            printf("Queue is filled.\n");

            printf(" # of remaining numbers: %d\n",queueRemain2 );

            for(a=0; a < forNum; a++) {
                r=rand()%rangeRand;
                //printf("writing to the queue %d \n\n",r);
                enqueue(mainQueue, r);
                queueRemain2--;
            }
        }

        pthread_mutex_unlock(&mutex);
    }
    return 0;
}


// main function
int main(int argc, char **argv){
    int NUMBER_OF_WORKERS= 5;
    int SIZE_OF_QUEUE = 10;
    int NUMBER_OF_RANDNUM = 20;
    int RANGE_OF_RANDOM = 100;
    int opt;

    //this while loop helps to parse the terminal inputs. (-t -q -r -m)
    while ((opt = getopt(argc, argv, "t:q:r:m:")) != -1)
    {
        switch (opt)
        {
        case 't':
            NUMBER_OF_WORKERS = atoi(optarg);
            break;
        case 'q':
            SIZE_OF_QUEUE = atoi(optarg);
            break;
        case 'r':
            NUMBER_OF_RANDNUM = atoi(optarg);
            break;             
        case 'm':
            RANGE_OF_RANDOM = atoi(optarg);
            break;
        default:
            break;
        }
    }

    srand(time(NULL));   

    //initializing the mutex.
    pthread_mutex_init (&mutex, NULL);

    pthread_t workers[NUMBER_OF_WORKERS];
    pthread_t generator;


    // creating the dynamic queue to kep the random numbers.
    queue *pt = newQueue(SIZE_OF_QUEUE);

    //creating the struct to be sent to the generate and consume functions.
    intPacket* S1 = malloc(sizeof(intPacket));
    S1 -> numOfRand = NUMBER_OF_RANDNUM;
    S1 -> RangeOfRand = RANGE_OF_RANDOM; 
    S1 -> mainQueue = pt; 
    S1 -> numberWorkers = NUMBER_OF_WORKERS;
    S1 -> still_generating = 1;
    

    // creating the random number generator thread.
    pthread_create(&generator, NULL, &generate, S1);

    sleep(2);

    int i=0 ;
    
    // creating the worker threads.
    for (i = 0; i < NUMBER_OF_WORKERS; i++){
            pthread_create(&workers[i], NULL, &consume, S1);

    }


    while (1) {

        if (S1-> still_generating == 0) {
            int retvalGenerator;
            retvalGenerator = pthread_join(generator, NULL);
            if (retvalGenerator == 0) {
                break;
            }
        }
    }

    return 0;
}