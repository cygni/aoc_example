#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* You could be lazy and just guess a size of the elements in a global int array larger than you'll ever need,
 * and you could just keep the size alongside instead of in a struct,
 * but here's how you could handle it dynamically and safely.
 */
typedef struct {
    int capacity;
    int size;
    int *elements;
} Intlist;

Intlist* emptyIntlist() {
    // When we pass stuff around, we probably want to malloc to allocate on the heap,
    // otherwise we might be passing a pointer to an area on the stack around, which
    // might get overwritten soon after we return from this scope.
    Intlist *new = malloc(sizeof(Intlist));
    new->elements = malloc(10 * sizeof(int));
    new->capacity = 10;
    new->size = 0;
    return new;
}

void appendToIntlist(Intlist* list, int element) {
    if (list->size > list->capacity) {
        fprintf(stderr, "List size %d exceeds capacity %d\n", list->size, list->capacity);
        exit(1);
    } else if (list->size == list->capacity) {
        list->elements = realloc(list->elements, (list->capacity + 10) * sizeof(int));
        list->capacity += 10;
    }
    list->elements[list->size] = element;
    list->size++;
}

Intlist* readInput() {
    Intlist *data = emptyIntlist();
    FILE *in_file  = fopen("input.txt", "r"); // read only 
    if (in_file == NULL) {
        fprintf(stderr, "Input file not found");
        exit(1);
    }
    // When reading lines with C, you like it if all lines end with \n
    int n;
    while (fscanf(in_file, "%d\n", &n) == 1) {
        appendToIntlist(data, n);
    }
    fclose(in_file);
    return data;
}

char* getSolutionPart1(Intlist *data) {
    // Here we just have to guess a max size, hope no buffer overflow
    // We could, of course, just return an integer instead, but this is an example
    char *result = malloc(10);
    sprintf(result, "%d", data->elements[0]);
    return result;
}

char* getSolutionPart2(Intlist *data) {
    char *result = malloc(10);
    sprintf(result, "%d", data->elements[1]);
    return result;
}

int main() {
    Intlist *data = readInput();

    printf("C\n");
    char* part = getenv("part");

    if (part != NULL && strcmp("part2", part) == 0) {
        printf("%s\n", getSolutionPart2(data));
    } else {
        printf("%s\n", getSolutionPart1(data));
    }

   return 0;
}