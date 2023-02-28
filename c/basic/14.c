# include <stdio.h>
# include <stdlib.h>

int tor(int num1,int num2,int num3){          /*artinya input 3 angka*/
    int result;

    if(num1 >= num2 && num1 >= num3){         /*if(jika) && = and statmen*/
        result = num1;
    } else if(num2 >= num1 && num2 >= num3){  /*else if(jika tidak)*/
        result = num2;
    } else {                                  /*else (tidak)*/
        result = num3;
    }

}


int main()
{
    printf("%d\n", tor(7, 93, 29));

    return 0;
}



/*
ini tentang if statments
ini membuat program untuk dapat mengambil keputusan

program di atas adalah untuk memilih angka mana yang paling besar dari
tiga angka yang di imput
< = kurang dari
> = lebih besar dari
||= ini OR pada C
== = artinya sama dengan
!= = ini artinya tidak sama dengan
(!(3 > 2)) = kalo gini tandanya kebalikan negotion


*/