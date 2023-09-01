#include <stdio.h>

// Déclaration de la fonction pour que le compilateur C sache qu'elle existe
extern size_t _my_strlen(const char *);
extern char* _my_strcpy(char* dest, const char* src);


int main() {
    //STRLEN
    const char *str = "Hello World !";
    size_t length = _my_strlen(str);
    printf("---STRLEN---\n");
    printf("La longueur de la chaîne est : %zu\n\n", length);
    //STRCPY
    char dest[100];
    _my_strcpy(dest, "I love raccoons");
    printf("---STRCPY---\n");
    printf("La chaîne copiée est : %s\n\n", dest);
    return 0;
}