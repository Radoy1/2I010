#include <stdio.h>

int main(int argc, char *argv[]){
  int res, nb1, nb2;

  if (argc!=3){
    fprintf(stderr,"Il ne faut que trois parametres\n");
    return 1;
  }
  
  if(!isdigit(argv[1][0]) || !isdigit(argv[2][0])){
    fprintf(stderr,"Il faut des entiers\n");
    return 1;
    }
  
  nb1 = atoi(argv[1]);
  nb2 = atoi(argv[2]);


  printf("%d\n",nb1+nb2);
  return 0;  
}
