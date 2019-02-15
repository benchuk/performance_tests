#include <stdio.h>
#include <sys/time.h>
#define MAX 10000000

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

    int i = 0;
    int sum = 0;
    start();
    // while (i < MAX)
    // {
    //     //printf("%d ", i);
    //     i++;
    //     sum++;
    // }
#pragma GCC push_options
#pragma GCC optimize("no-peel-loops")
    for (i = 0; i < MAX; i++)
    {
        sum++;
    }
#pragma GCC pop_options
    stop();
    printf("%d ", sum);
    printf("loops %d", MAX);
    printf("done");
    return 0;
}