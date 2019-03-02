#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
  setenv(argv[1],argv[2],1);
  system("gnome-terminal");
  system("echo $$: $TOTO");
  printf("PID:%d\n",getpid());
  char *var = getenv(argv[1]);
  printf("%s\n",var);
  return 0;
}
