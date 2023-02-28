#include "isogram.h"

bool is_isogram(const char phrase[]){
    bool com[CHAR] = {false};

    if(!phrase) {
        return false;
    }
    for (const char *p = &phrase[0]; '\0' != *p; p++){
        char c = *p;
        if(isupper(c)){
            c = tolower(c);
        }
        if(isalpha(c)){
            if (com[c - 'a']){
                return false;
            }
            com[c - 'a'] = true;
        }
    }
    return true;
}

int main(){
  char word[8] = "isograms"; // expect false because 's' double
  printf("%s\n", is_isogram(word) ? "true" : "false");

  return 0;
}