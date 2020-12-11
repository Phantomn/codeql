int main(int argc, char* argv[]){
    int size1=5;
    int size2= size1 + 5;

    char *dst = malloc(size1);
    char *src = malloc(size2);

    if(strcmp(argv, "change") == 0){
        size1 = 15;
    }

    memcpy(dst, src, size1);
}