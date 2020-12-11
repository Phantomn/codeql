int main(int argc, char **argv)
{
    int dst_size = 5;
    int src_size = 10;

    char *dst = malloc(dst_size);
    char *src = malloc(src_size);

    memcpy(dst, src, src_size);
}