#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <dirent.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <string.h>


int is_regular_file(const char *path);
char** path_returner(char* folder_path, FILE* f);
char* concat(const char *s1, const char *s2);



int main(int argc, char **argv) {
    char buf[1000];                 //defining buffer to hold the current directory.
    char* folder_path = argv[1];    //assigning the argument passsed from the execution.
    int i = 0;

    
    FILE *f = fopen("listing.list", "a"); // creating new list file.

    fprintf(f, "\n");
    fprintf(f, "2093656\n");
    getcwd(buf, sizeof(buf));       // assigning the current directory to the buffer.
    fprintf(f, "%s\n\n", buf);        //print the directory at the top of each execution.

    path_returner(folder_path, f);

}


char** path_returner(char* folder_path, FILE* f){
    DIR *dp;
    struct dirent *ep;

    dp = opendir (folder_path);
    if (dp != NULL)
      {
        while ((ep = readdir(dp)) != NULL) {
            
            // to prevent the system to print the upper folder content.
          if (!( !strcmp(ep->d_name, ".") || !strcmp(ep->d_name, "..") )) {
              
              // concatenaing the executed path and the investigated folder.
              char* concated_path = concat( concat(folder_path, "/"), ep->d_name );

              if ( is_regular_file(concated_path) ) {
                  // if a file is found, write it to the list.
                  fprintf(f, "%s\n", concated_path);
              }
              else {
                  //if a folder is found, then run path_returner recursively on it.
                  printf("%s folder is found\n",concated_path);
                  printf("Digging more.. \n\n");
                  path_returner(concated_path, f);
            }
          }
        }
        
          
          (void) closedir (dp);
      }
    else
      perror ("Couldn't open the directory, An unexpected error occured!");

    return 0;
}

// is_regular_file function checks whether its argument is a file or not.
int is_regular_file(const char *path) {
    struct stat path_stat;
    stat(path, &path_stat);
    return S_ISREG(path_stat.st_mode);
}


// As C does not have a string concatenation operation, A simple function for this purpose is defined.
char* concat(const char *s1, const char *s2)
{
    const size_t len1 = strlen(s1);
    const size_t len2 = strlen(s2);
    char *result = malloc(len1+len2+1);//+1 for the null-terminator
    memcpy(result, s1, len1);
    memcpy(result+len1, s2, len2+1);//+1 to copy the null-terminator
    return result;
}

//

/*
        *** REFERENCES***
 
 1) As explained in the code, C does not have a string concatenation operation.
 So I referenced from the Stack OverFlow link given below.
 Link: https://stackoverflow.com/questions/8465006/how-do-i-concatenate-two-strings-in-c
 
 
 2) While designing the path_returner function, I referenced from the "Simple Program to List a Directory" example from the official website of GNU.
 Link: https://www.gnu.org/software/libc/manual/html_node/Simple-Directory-Lister.html
 
 
 
 
*/
