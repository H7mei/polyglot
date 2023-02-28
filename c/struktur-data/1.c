#include <stdio.h>
#include <stdlib.h>

// structs
struct stack
{
  struct node *top;
  int size;
};

struct node
{
  int data;
  struct node *next;
};

// function declaration
int push(int, struct stack *);
int pop(struct stack *);
void destroy(struct stack *);

int main()
{
  int result = EXIT_SUCCESS;

  size_t i;

  // alocate memory for struck stack
  struct stack *stack = malloc(sizeof *stack);
  if (NULL == stack)
  {
    perror("malloc() failed");
    return EXIT_FAILURE;
  }

  // initsialisasi stack
  stack->top = NULL;
  stack->size = 0;

  // Push 10 int
  int data = 0;
  for (i = 0; i < 10; i++)
  {
    printf("Pushing : %d\n", data);
    if (-1 == push(data, stack))
    {
      perror("push() failed");
      result = EXIT_FAILURE;
      break;
    }

    ++data;
  }

  if (EXIT_SUCCESS == result)
  {
    // pop 10 int
    for (int i = 0; i < 10; i++)
    {
      printf("Popped : %d\n", pop(stack));
    }
  }

  // destroy
  destroy(stack);

  return result;
}

// memasukaan nilai ke stack
// mengembalikan 0 jika sukses dan -1 jika gagal
int push(int data, struct stack *stack)
{
  int result = 0;

  struct node *new_node = malloc(sizeof *new_node);
  if (NULL == new_node)
  {
    result = -1;
  }
  else
  {
    new_node->data = data;
    new_node->next = stack->top;
    stack->top = new_node;
    stack->size++;
  }

  return result;
}

// membaca nilai stack
// mengembalikan nilai stack
int pop(struct stack *stack)
{
  struct node *top = stack->top;
  int data = top->data;
  stack->top = top->next;
  stack->size--;
  free(top);
  return data;
}

void destroy(struct stack *stack)
{
  // clear all pointer
  while (stack->top != NULL)
  {
    pop(stack);
  }
}
