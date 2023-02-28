# include <stdio.h>
# include <stdlib.h>

int main ()
{
    char name[] = "Kurama Hinata";
    int umur = 90;
    int kelas = 2;
    char Kampus[] = "Konoha University";

    printf("Nama Saya %s\n", name);
    printf("Dari IF-01-0%d\n", kelas);
    printf("Saya berumur %d Tahun\n", umur);
    printf("Saya Kuliah di %s\n", Kampus);

    return 0;
}

/*
ini contoh sederhana dari variabel 
kalobentuknya karakter menggunakan char(charakter)
dan pada saat printft nya %s (string)
kalo bentuknya angka mengunakan int (integer)
dan pada saat printf nya %d (desimal)
*/