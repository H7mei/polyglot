# include <stdio.h>
# include <stdlib.h>
# include <string.h>

/* sebagai kontainer untuk meyimpan data */
struct student{
  // Menggunakan Pointer
  char *name;
  char grade [5];
  int age;
  double gpa;
  // Nested Struct
  struct alamat{
    char rumah[20];
    char kota[20];
  } emp;
    
// cara Pertama penamaan Struct
} p1;

// struct just data type
void display(struct student s){
  printf("\n");
  printf("Nama Siswa : %s\n", s.name);
  printf("Umur       : %d tahun\n", s.age);
  printf("nilai      : %s\n", s.grade);
  printf("gpa        : %f\n", s.gpa);
  printf("rumah      : %s\n", s.emp.rumah);
  printf("kota       : %s\n", s.emp.kota);
}

void poinStudent(struct student *as){
  printf("\n");
  printf("Nama Siswa : %s\n", as->name);
  printf("Umur       : %d tahun\n", as->age);
}

int main()
{
  // deklarasi variabel struck ke dua
  struct student poin;
  
  char nama[20] = "John Connor"; 
  // mengisi data stuct
  struct student student1 = {"Jonh Connor", "A", 17, 32.1, "sweet home", "jakarta"};


  p1.age = 10;
  p1.name = nama;
  strcpy(p1.emp.rumah, "lOAN");

  printf("\n");
  printf("%d\n", p1.age);
  printf("Pointer :%s\n", p1.name);
  printf("Nested  : %s\n", p1.emp.rumah);

  display(student1);

  poin.name = "ini pointer";
  poin.age = 10;

  poinStudent(&poin);

  return 0;
}

/*
data structur pada C
tipe data
*/

