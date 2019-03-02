#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
  char *path=getenv("PATH");
  printf("path:%s\n",path);
  return 0;
}
