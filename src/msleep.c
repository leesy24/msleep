#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(int argc, char* argv[])
{
	//If only 0 parameter is entered, prompt for the missing parameter(s)
	if(argc < 2)
	{
		printf("msleep v1.0\n");
		printf("\n");
		printf("MISSING A PARAMETER. Enter milliseconds value.\n");
		printf("\n");
		return(-1);
	}

	int ms = atoi(argv[1]);

	if (ms <= 0) return 0;

    struct timespec ts;
    ts.tv_sec = ms / 1000;
    ts.tv_nsec = (ms % 1000) * 1000000;
    nanosleep(&ts, NULL);

	return 0;
}
//============================================================================
