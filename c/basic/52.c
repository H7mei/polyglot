#include <stdio.h>
#include <stdlib.h>
#include <curses.h>

struct Node
{
    int data;
    struct Node *prev;
    struct Node *next;
};

typedef struct Node node;

node *pHead = NULL;

node *nodeBaru()
{
    node *pNew = NULL;
    pNew = (node *)malloc(sizeof(node));
    return (pNew);
}

// insert dari depan
void insert_first(node *pNew)
{
    printf("Masukkan Bilangan : ");
    scanf("%d", &pNew->data);

    if (pHead == NULL)
    {
        pNew->prev = pHead;
        pNew->next = pHead;
        pHead = pNew;
    }
    else
    {
        pNew->prev = pHead;
        pNew->next = pHead;
        pHead->prev = pNew;
        pHead = pNew;
    }
}

// insert setelah
void insert_after(node *pNew)
{
    node *pWalker;
    pWalker = pHead;

    int nilai;
    int sisip;

    printf("Masukkan nilai yang ingin ditambahkan : ");
    scanf("%d", &pNew->data);

    printf("data disisipkan setelah nilai : ");
    scanf("%d", &sisip);

    while (pWalker != NULL && pWalker->data != sisip)
    {
        pWalker = pWalker->next;
    }

    if (pWalker == NULL)
    {
        printf("\ndata tidak ditemukan");
    }
    else if (pWalker->next == NULL)
    {
        while (pWalker->next != NULL)
        {
            pWalker = pWalker->next;
        }
        pWalker->next = pNew;
        pNew->prev = pWalker;
        pNew->next = NULL;
    }
    else
    {
        pNew->next = pWalker->next;
        pWalker->next->prev = pNew;
        pWalker->next = pNew;
        pNew->prev = pWalker;
    }
}

// insert dari paling belakang
void insert_last(node *pNew)
{
    node *pEnd;
    pEnd = pHead;

    printf("Masukkan nilai yang ingin ditambahkan : ");
    scanf("%d", &pNew->data);

    while (pEnd->next != NULL)
    {
        pEnd = pEnd->next;
    }
    pEnd->next = pNew;
    pNew->prev = pEnd;
    pNew->next = NULL;
}

// Delete dari depan
void delete_first()
{
    node *pHapus;

    if (pHead->next == NULL)
    {
        pHead = NULL;
    }
    else
    {
        pHapus = pHead;
        pHead = pHead->next;
        pHead->prev = NULL;

        free(pHapus);
    }
}

// delete setelah node yang di pilih
void delete_after()
{
    node *pCari;
    int hapus;

    pCari = pHead;

    printf("Masukkan bilangan yang ingin dihapus : ");
    scanf("%d", &hapus);

    while (pCari != NULL && pCari->data != hapus)
    {
        pCari = pCari->next;
    }

    if (pCari == NULL)
    {
        printf("\nData tidak ditemukan\n");
    }
    else if (pHead->next == NULL)
    {
        pHead = NULL;
    }
    else if (pCari == pHead)
    {
        pCari = pHead;
        pHead = pHead->next;
        pHead->prev = NULL;
        free(pCari);
    }
    else if ((pCari->prev != NULL) && (pCari->next == NULL))
    {
        while (pCari->next != NULL)
        {
            pCari = pCari->next;
        }
        pCari->prev->next = NULL;
        free(pCari);
    }
    else
    {
        pCari->prev->next = pCari->next;
        pCari->next->prev = pCari->prev;

        free(pCari);
    }
}

// delete dari paling belakang
void delete_last()
{
    node *pEnd;
    pEnd = pHead;

    if (pHead->next == NULL)
    {
        pHead = NULL;
    }
    else
    {
        while (pEnd->next != NULL)
        {
            pEnd = pEnd->next;
        }
        pEnd->prev->next = NULL;
        free(pEnd);
    }
}

void View()
{
    node *pWalker = pHead;

    if (pWalker == NULL)
    {
        printf("\n[DATA KOSONG]");
    }
    else
    {
        printf("\n");
        while (pWalker != NULL)
        {
            printf("[%d] ", pWalker->data);
            pWalker = pWalker->next;
        }
    }
}

int main()
{
    node *pNew;
    int pilih;
    int bil;

    do
    {
        system("clear");
        View();
        printf("\n\n");
        printf("------MENU-----");
        printf("\n1. Insert First");
        printf("\n2. Insert After");
        printf("\n3. Insert Last");
        printf("\n4. Delete First");
        printf("\n5. Delete After");
        printf("\n6. Delete Last");
        printf("\n7. exit");

        printf("\npilihan : ");
        scanf("%d", &pilih);

        switch (pilih)
        {
        case 1:
            pNew = nodeBaru();
            insert_first(pNew);
            break;
        case 2:
            pNew = nodeBaru();
            insert_after(pNew);
            break;
        case 3:
            pNew = nodeBaru();
            insert_last(pNew);
            break;
        case 4:
            delete_first();
            break;
        case 5:
            delete_after();
            break;
        case 6:
            delete_last();
            break;
        }
    } while (pilih != 7);

    printf("\n");

    return 0;
}