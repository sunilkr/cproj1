#include "dbgp.h"

int main(){
    const char* message = "Hello Dummy";
    const char* msg = "New Message";

    dbgprint(message);
    dbgprint(msg);
    return 0;
}