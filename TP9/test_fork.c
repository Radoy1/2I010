#include <stdio.h>
#include <unistd.h>
int main(){
  int fork=fork();
  if(fork!=0){
    sleep(5);
    printf("Je suis le père : %d\n",fork);
  } else {
    sleep(5);
    printf("Je suis le fils\n");
  }
  return 0;
}
