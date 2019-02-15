#include <stdio.h>
#include <stdlib.h>

#include <stdio.h>
#include <stdlib.h>

static struct timeval tm1;

static inline void start()
{
    gettimeofday(&tm1, NULL);
}

static inline unsigned long long stop()
{
    struct timeval tm2;
    gettimeofday(&tm2, NULL);

    unsigned long long t = 1000 * (tm2.tv_sec - tm1.tv_sec) + (tm2.tv_usec - tm1.tv_usec) / 1000;
    return t;
}

int main()
{
    start();
    FILE *f = fopen("file.txt", "rb");
    fseek(f, 0, SEEK_END);
    long fsize = ftell(f);
    fseek(f, 0, SEEK_SET); /* same as rewind(f); */

    char *string = malloc(fsize + 1);
    fread(string, fsize, 1, f);
    fclose(f);

    string[fsize] = 0;
    unsigned long long t = 0;

    t = stop();
    //just to make sure there are not optimizations som how
    string[0] = 'a';
    //printf("%s\n", string);
    printf("%llu ms\n", t);

    printf("file len: %d", fsize);
    return 0;
}