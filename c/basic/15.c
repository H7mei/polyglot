# include <stdio.h>
# include <stdlib.h>

int main()
{
    int num1;
    int num2;
    char op;

    printf("\nmasukkan angka pertama :");
    scanf("%d", &num1);
    printf("masukkan operator      :");
    scanf(" %c", &op);
    printf("masukkan angka kedua   :");
    scanf("%d", &num2);

    if(op == '+'){
        printf("jawaban : %d\n", num1 + num2);
    }else if(op == '-'){
        printf("jawaban : %d\n", num1 - num2);
    }else if(op == 'x'){
        printf("jawaban : %d\n", num1 * num2);
    }else if(op == '/'){
        printf("jawaban : %d\n", num1 / num2);
    }else if(op == '%'){
        printf("jawaban : %d\n", num1 % num2);    
    }else{
        printf("\n=======operator salah\n");
        printf("=======coba lagi\n");
    }

    return 0;
}





/* 
membuat kalkulator lebih baik 
*/