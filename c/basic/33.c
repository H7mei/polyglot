#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int int_compare (const void *a, const void *b)
{
    return ( *(int*)a - *(int*)b);
}

int main() {
    
    int count;
    scanf("%d", &count);

    int arr[count];
    
    for (int i = 0; i < count; i++)
    {
        scanf("%d", &arr[i]);
    }
    // metoth di ada cara yang lu tu udah kuno 
    qsort(arr, count, sizeof(int), int_compare);
    
    printf("%d", arr[count/2]);
}