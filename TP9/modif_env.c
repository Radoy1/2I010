#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]){
  setenv(argv[1],argv[2],1);
  char *var = getenv(argv[1]);
  printf("%s\n",var);
  return 0;
}
