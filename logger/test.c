#include <stdio.h>
#include "logger.h"
int main()
{
  
  int x = 199,i=0;
  char *s = "Bitter Truth";

  while(i<5)
  {
   LOG_PRINT("Programming paradigm ");
   LOG_PRINT("Hello word of pp !!! %s %d",s,x++);
   i++;
  }
}

