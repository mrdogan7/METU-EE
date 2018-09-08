

// Data structure for queue
typedef struct queue
{
    int *items;     // array to store queue elements
    int maxsize;    // maximum capacity of the queue
    int front;      // front points to front element in the queue (if any)
    int rear;       // rear points to last element in the queue
    int size;       // current capacity of the queue
}queue;

struct queue* newQueue(int size);
int size(struct queue *pt);
int isEmpty(struct queue *pt);
int front(struct queue *pt);
void enqueue(struct queue *pt, int x);
void dequeue(struct queue *pt);




