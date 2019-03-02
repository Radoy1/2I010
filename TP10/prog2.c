#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char *argv[]){

  int i,j;

  for(i=0;i<3;i++){
    
    if(fork()==0){
      for(j=0;j<3;j++){
	if(fork()==0){
	  sleep(10);
	  exit(1);
	}
      }
      sleep(10);
      for (j=0;j<3;j++)
	wait(NULL);
      exit(1);
    }

  }
  for (j=0;j<3;j++)
    wait(NULL);
  sleep(10);
  return 0;
}
    
