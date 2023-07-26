#include <stdio.h>
#include <getopt.h>
#include <stdlib.h>
#include <string.h>

int main ( int argc, char **argv) {
 
 int option_index = 0;
 
 char *install = NULL;

 char *remove = NULL; 

 char *list = NULL;

 char *uninstall = NULL;

 char *search = NULL;

 while (( option_index = getopt(argc, argv, "i:hR:lU:s")) != -1){
   
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
     printf("-i: install a binary program\n"
     "-s: search for a package\n"
     "-R: remove a program\n"
     "-l: list all installed programs\n"
     "-U: uninstall scoria\n"
     "-u: update scoria\n");
       break;
    
     case 'R':
       remove = optarg;
       printf("uninstalling.. %s\n", remove);
                
       char RemoveCommand[1000];
       sprintf(RemoveCommand, "wget --show-progress 'https://raw.githubusercontent.com/hexisXz/scoria-repo/main/%s/uninstall' && sh uninstall && rm uninstall", remove);
                
       system(RemoveCommand);
       break;

       
    case 'l':
      list = optarg;
      
      char ListCommand[1000];
      sprintf(ListCommand, "ls -al /usr/local/src/");

      system(ListCommand);
       break;

    case 'U':
      uninstall = optarg;

      char UninstallCommand[1000];
      sprintf(UninstallCommand, "exec ~/.config/scoria/uninstall/uninstall");

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
