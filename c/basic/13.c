# include <stdio.h>
# include <stdlib.h>

int koma(int koma)
{
    return koma * koma * koma;
}


int main ()
{
    printf("Jawabanya : %d\n", koma(8));

    return 0;
}
/* 
ini tentang return statmen
memangil kembali informasi yang telah di berikan
ini kenapa di bawah main karena kita ga bisa memanggil fungsi yang tidak
ada.
*/
