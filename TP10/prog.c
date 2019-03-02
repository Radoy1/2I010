#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, int *argv[]){

  if (fork()){
    sleep(10);
  }else{
    if(fork()){
      sleep(10);
    }else{
      if(fork()){
	sleep(10);
      }
      
    }
  }
  return 0;
}
