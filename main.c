#include <stdio.h>

// Déclaration de la fonction pour que le compilateur C sache qu'elle existe
extern size_t _my_strlen(const char *);

int main() {
    const char *str = "Bonjour";
    size_t length = _my_strlen(str);
    printf("La longueur de la chaîne est : %zu\n", length);
    return 0;
}