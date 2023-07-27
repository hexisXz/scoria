#include <stdio.h>
#include <getopt.h>
#include <stdlib.h>
#include <string.h>

int main ( int argc, char **argv) {
 
 int option_index = 0;
 
 char *install = NULL;

 char *remove = NULL; 

 char *uninstall = NULL;

 char *search = NULL;

 while (( option_index = getopt(argc, argv, "i:hR:Us")) != -1){
   
   switch (option_index) {
     case 'i':
       install = optarg;
       printf("installing %s...\n", install);
       
       char command[1000];

       sprintf(command, "wget -q --show-progress --progress=bar:force 2>&1 https://raw.githubusercontent.com/hexisXz/scoria-repo/main/%s/%s-pkg && sh %s-pkg ; rm *-pkg", install, install, install);
       
       system(command);

       printf("%s installed.\n", install);

       break;

     case 'h':
     printf("-i: install program\n"
     "-s: search for a package\n"
     "-R: remove a program\n"
     "-l: list all installed programs\n"
     "-U: update scoria\n");
       break;
    
     case 'R':
       remove = optarg;
       printf("uninstalling.. %s\n", remove);
                
       char RemoveCommand[1000];
       sprintf(RemoveCommand, "wget --show-progress 'https://raw.githubusercontent.com/hexisXz/scoria-repo/main/%s/uninstall' && sh uninstall && rm uninstall", remove);
                
       system(RemoveCommand);
       break;

       
    case 'U':
      uninstall = optarg;

      char UninstallCommand[1000];
      sprintf(UninstallCommand, "exec ~/.config/scoria/update/update");

      system(UninstallCommand); 
       break;

    case 's':
      search = optarg;

      char SearchCommand[1000];
      sprintf(SearchCommand, "curl -L 'https://raw.githubusercontent.com/hexisXz/scoria-repo/main/%s/%s-pkg' | grep -i pkgname=", search, search);

      system(SearchCommand);

       break;
    default:
      printf("Option incorrect\n");
      return 1;
     } 
   }  
 return 0;
} 
