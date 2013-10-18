#include <sys/time.h>

int plus(int x, int y);

int plusone(int x);

long long current_timestamp()
{
    struct timeval t;
    gettimeofday(&t, NULL);
    long long ms = t.tv_sec*1000LL + t.tv_usec/1000;
    
    return ms;
}
