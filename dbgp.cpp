#include <stdio.h>
#include "dbgp.h"

int dbgprint(const char* message){
    printf("DEBUG: %s\n", message);
    return 0;
}