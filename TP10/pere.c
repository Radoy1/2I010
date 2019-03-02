#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main (int argc, char *argv[]){
 
  int pid;
  int i=0;
  for (i=0;i<3;i++){
    pid=fork();
   srand(time(NULL));
    if(pid==0){
      sleep(10-(getpid()%10));
      exit(1);
    }else {
      printf("creati0n du fils PID=%d\n",pid);
    }
  }
  for (i=0;i<3;i++){
  pid=wait(0);
  printf("mort du fils PID=%d\n",pid);
}

  return 0;
}
