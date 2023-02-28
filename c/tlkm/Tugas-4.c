// Stack with array
#include <stdio.h>
#include <string.h>

struct KTP{
  char nama[20];
  int usia;
};

typedef struct{
  int top;
  struct KTP table[3];
}ADT;

ADT stack;

void read(int i){
  printf("| %-18s| %-4d|\n", stack.table[i].nama, stack.table[i].usia);
}

void push(char nama[], int usia){
  stack.top = stack.top + 1;
  int top = stack.top;
  strcpy(stack.table[top - 1].nama, nama);
  stack.table[top - 1].usia = usia;
}

int peek(){
  int top = stack.top;
  read(top - 1);
}

void pop(){
  int i = stack.top--;
  read(i - 1);
}

int main(){
  // isi tiga data
  push("Alexa Filcom", 34);
  push("Alexa Sizsa", 33);
  push("Alexa Abraham", 35);

  printf("-------------------------------------\n");
  printf("| Status  |   Nama Lengkap   | usia |\n");
  printf("-------------------------------------\n");
  // menampilkan 3 data
  for (int i = 0; i < 3; i++){
    printf("| Pushing ");
    read(i);
  }
  
  printf("\n");

  // Melihat data paling atas
  printf("| Peek    ");
  peek();

  printf("\n");


  // Memunculkan data
  for (int i = 1; i <= 3; i++){
    printf("| Popped  ");
    pop();
  }
  printf("-------------------------------------\n");
  return 0;
}