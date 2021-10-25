#include <stdio.h>
#include <stdlib.h>

int getSolutionPart1() {
    return 1337;
}

int getSolutionPart2() {
    return 42;
}

int main() {

    char* part = getenv("part");

    if (strcmp("part1", part) == 0) {
        printf("%i\n", getSolutionPart1());
    } else {
        printf("%i\n", getSolutionPart2());
    }

   return 0;
}