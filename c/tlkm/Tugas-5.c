#include <stdio.h>
#include <stdlib.h>

struct Node
{
  int data;
  struct Node *next;
};

void insert_node(struct Node **head, int nodeValue);
void print_list(struct Node *head);
void reverse_list(struct Node **head);
void sorting_list(struct Node **head);

int main()
{
  struct Node *head;
  head = NULL;

  insert_node(&head, 9);
  insert_node(&head, 4);
  insert_node(&head, 2);
  insert_node(&head, 7);
  insert_node(&head, 1);
  insert_node(&head, 8);
  insert_node(&head, 0);
  insert_node(&head, 3);
  insert_node(&head, 6);
  insert_node(&head, 5);

  printf("=====Single Linked List====\n");
  printf("data awal : ");
  print_list(head);
  printf("reversed  : ");
  reverse_list(&head);
  print_list(head);
  printf("sorted    : ");
  sorting_list(&head);
  print_list(head);

  return 0;
}

// print node
void print_list(struct Node *head)
{
  struct Node *currentNode = head;

  while (currentNode != NULL)
  {
    printf("[%d]", currentNode->data);
    currentNode = currentNode->next;
  }
  printf("\n");
}

// insert node
void insert_node(struct Node **head, int nodeValue)
{
  struct Node *currentNode = malloc(sizeof *currentNode);
  currentNode->data = nodeValue;
  currentNode->next = (*head);

  *head = currentNode;
}

// reverse list
void reverse_list(struct Node **head)
{
  struct Node *iterator = *head;
  struct Node *prevNode = NULL;
  struct Node *nextNode = NULL;

  while (iterator != NULL)
  {
    nextNode = iterator->next;
    iterator->next = prevNode;
    prevNode = iterator;
    iterator = nextNode;
  }

  *head = prevNode;
}

// buble sort
void sorting_list(struct Node **head)
{
  struct Node *start = *head;
  struct Node *ptr1;
  struct Node *lptr = NULL;
  int swapped;
  int temp;

  do
  {
    swapped = 0;
    ptr1 = start;

    while (ptr1->next != lptr)
    {
      if (ptr1->data < ptr1->next->data)
      {
        temp = ptr1->data;
        ptr1->data = ptr1->next->data;
        ptr1->next->data = temp;
        swapped = 1;
      }
      ptr1 = ptr1->next;
    }
    lptr = ptr1;
  } while (swapped);
}