#include <stdio.h>
// Windows
// #include <coio.h>
// Linux
#include <curses.h>
#define max 5

// deklarasi variabel struck
typedef struct
{
  int top;
  int data[max];
} stack;

void createEmpty(stack *s)
{
  s->top = -1;
}

int isFull(stack s)
{
  if (s.top == max)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}

void push(stack *s, int x)
{
  s->top = s->top + 1;
  s->data[s->top] = x;
}

void pop(stack *s)
{
  s->top = s->top - 1;
}

int peek(stack s)
{
  return s.data[s.top];
}

int isEmpty(stack s)
{
  if (s.top == -1)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}

int main()
{
  stack s;
  int input;
  int pilih;
  createEmpty(&s);
  pilih = 0;
  while (pilih != 5)
  {
    if (isEmpty(s) == 1)
    {
      printf("\nStack masih kosong\n");
    }
    else if ((isEmpty(s) == 0) && (isFull(s) == 0))
    {
      printf("Nilai pada stack : ");
      for (int i = s.top; i >= 0; i--)
      {
        printf("[%d]", s.data[i]);
      }
      printf("\n\n");
    }
    else
    {
      printf("Stack penuh");
    }
    printf("pilih 1, 2, 3, 4, 5\n");
    printf("input : ");
    scanf("%d", &pilih);
    switch (pilih)
    {
    case 1:
      if (isFull(s) == 1)
      {
        printf("stack penuh\n");
      }
      else
      {
        printf("Masukkan data : ");
        scanf("%d", &input);
        printf("%d", input);
      }
      system("clear");
      break;
    case 2:
      printf("Top bernilai: %d \n\n", s.data[s.top]);
      pop(&s);
      system("clear");
      break;
    case 3:
      if (isEmpty(s))
      {
        printf("Stack kosong\n");
      }
      else
      {
        printf("nilai paling atas : %d\n\n", peek(s));
      }
      system("cat 1.c");
      break;
    case 4:
      while (isEmpty(s) == 0)
      {
        printf("Pop : %d\n\n", peek(s));
        pop(&s);
      }
      printf("stack kosong\n");
      system("clear");
    case 5:
      printf("terima kasi\n");
      break;
    default:
      break;
    }
  }
}