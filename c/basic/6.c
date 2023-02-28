# include <stdio.h>
# include<stdlib.h>
# include<math.h>

int main()
{
    printf("%f\n", pow(4, 3) );
    printf("%f\n", sqrt(100) );
    printf("%f\n", ceil(34.21931209830));
    printf("%f\n", floor(34.21931209830));

    return 0;
}

/*
pow() ini pemangkatan yang angaka di depan utama yang delakangnya pangkat
#### pow di compiler ini memiliki masalah 
solusi 1. gcc <nama file> -o <nama file> -lm
       2. ./<nama file>
sqrt() ini pembagian
ceil() ini pembulatan ke atas
floor() ini pembulatan ke bawah

for more go to google
Search C math fuction
*/