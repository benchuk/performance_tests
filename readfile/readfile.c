#include <stdio.h>
#include <stdlib.h>

static struct timeval tm1;

static inline void start()
{
    gettimeofday(&tm1, NULL);
}

static inline void stop()
{
    struct timeval tm2;
    gettimeofday(&tm2, NULL);

    unsigned long long t = 1000 * (tm2.tv_sec - tm1.tv_sec) + (tm2.tv_usec - tm1.tv_usec) / 1000;
    printf("%llu ms\n", t);
}

int main()
{
    char ch;
    FILE *fp;

    start();

    fp = fopen("file.txt", "r"); // read mode

    if (fp == NULL)
    {
        perror("Error while opening the file.\n");
        exit(EXIT_FAILURE);
    }

    //printf("The contents of %s file are:\n", file_name);

    int i = 0;
    while ((ch = fgetc(fp)) != EOF)
    {
        i++;
        //printf("%c", ch);
    }
    fclose(fp);
    stop();
    printf("%d", i);
    return 0;
}