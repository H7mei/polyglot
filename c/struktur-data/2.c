#include <stdio.h>
#include <stdlib.h>

// queue
struct node
{
  int data;
  struct node *next;
};
struct Queue
{
  struct node *front, *rear;
};

// function deklarasi
int enQueue(int, struct Queue *);
int deQueue(struct Queue *);
void destroy(struct Queue *);

int main()
{
  int result = EXIT_SUCCESS;

  size_t i;

  // alocate memory for struck queue
  struct Queue *queue = malloc(sizeof *queue);
  if (NULL == queue)
  {
    perror("malloc() failed");
    return EXIT_FAILURE;
  }

  // enQueue 10 int
  int data = 0;
  for (i = 0; i < 10; i++)
  {
    printf("enQueue : %d\n", data);
    enQueue(i, queue);
    ++data;
  }

  if (EXIT_SUCCESS == result)
  {
    // deQueue 10 int
    for (int i = 0; i < 10; i++)
    {
      printf("deQueue : %d\n", deQueue(queue));
    }
  }

  // destroy
  destroy(queue);

  return result;
}

// mengembalikan 0 jika sukses dan -1 jika gagal
// memasukkan data
int enQueue(int data, struct Queue *queue)
{
  int result = 0;

  struct node *new_node = malloc(sizeof *new_node);

  new_node->data = data;
  if (NULL == queue->rear)
  {
    queue->front = queue->rear = new_node;
  }
  queue->rear->next = new_node;
  queue->rear = new_node;

  return result;
}

// membaca nilai queue
// mengembalikan nilai stack
int deQueue(struct Queue *queue)
{
  // jika kosong
  if (queue->front == NULL)
  {
    return 1;
  }
  struct node *temp = queue->front;
  queue->front = queue->front->next;
  int data = temp->data;

  if (queue->front == NULL)
  {
    queue->rear = NULL;
  }
  free(temp);
  return data;
}

void destroy(struct Queue *queue)
{
  // clear all pointer
  while (queue->rear != NULL)
  {
    deQueue(queue);
  }
}