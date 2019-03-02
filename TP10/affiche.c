#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
  char a[200];
  while(scanf("%s",a)!=EOF)
    printf("%s\n",a);
  
  return 0;
}
