# include <stdio.h>
# include <stdlib.h>


int main()
{
    int AngkaRahasia = 753;
    int tebakan;
    int limittebakan = 5;
    int percobaantebakan = 0;
    int gues = 0;

    while (tebakan != AngkaRahasia && gues == 0){
        if (percobaantebakan < limittebakan){
            printf("Masukkan angka : ");
            scanf("%d", &tebakan);
            percobaantebakan++;
        } else {
            gues = 1;
        }       
    }
    if (gues == 1){
        printf("Kamu gagal!!\n");
    }else{
        printf("You win!!\n");

    }

    return 0;
}

/*
membuat game sederhana
program sederhana menebak angka dengan batas limit
tebakan 5
*/