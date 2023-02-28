#include <stdio.h>

#define MAX 10

int intArray[MAX];
int front = 0;
int rear = -1;
int itemCount = 0;

int isEmpty()
{
  return itemCount == 0;
}

int isFull()
{
  return itemCount == MAX;
}

// masukin data
void enquueData(int data)
{
  if (!isFull())
  {
    if (rear == MAX - 1)
    {
      rear = -1;
    }

    intArray[++rear] = data;

    itemCount++;
  }
}

// mengambildata
int dequeueData()
{
  int data = intArray[front++];

  if (front == MAX)
  {
    front = 0;
  }

  itemCount--;
  return data;
}

int peek()
{
  return intArray[front];
}

int tail()
{
  if (rear != -1)
  {
    return intArray[rear];
  }
}

int main()
{
  // Memasukkan 10 int
  for (int i = 0; i < 10; i++)
  {
    printf("pushing : %d\n", i);
    enquueData(i);
  }

  // jika penuh
  if (isFull())
  {
    printf("Queue is full!\n");
  }

  // mengeluarkan 10 data
  while (!isEmpty())
  {
    int n = dequeueData();
    printf("poping : %d\n", n);
  }
  return 0;
}