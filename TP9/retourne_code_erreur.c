#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){

  int i;
  
  if(argc == 1){
    fprintf(stderr,"Il faut des parametres\n");
    exit(1);
  }
  
  for(i=1;i<argc;i++)
    printf("%s\n",argv[i]);

  return 0;
}
