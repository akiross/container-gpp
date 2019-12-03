# container-gpp
Generic Preprocessor in a small-ish container.

[GPP](https://logological.org/gpp) is a generic preprocessor that can be used to
preprocess text files. This Dockerfile should help using it where not avaiable.

To build the container image using podman:

    $ podman build -t container-gpp:0.1.1 .

Or, if you're still using docker:

    # docker build -t container-gpp:0.1.1 .

The container has gpp as entrypoint, so you can pass flags as cmd arguments:

    $ podman run -it --rm container-gpp:0.1.1 --help
    Usage : gpp [-{o|O} outfile] [-I/include/path] [-Dname=val ...] [-z] [-x] [-m]
    ...

You can pipe to it a file (make sure you're using `-i` docker flag) to get
processed output:

    $ cat <<EOF | podman run -i --rm akiross/container-gpp:0.1.1 
    pipe heredoc> Hello
    pipe heredoc> #ifdef WRITE
    pipe heredoc> World
    pipe heredoc> #else
    pipe heredoc> All
    pipe heredoc> #endif
    pipe heredoc> EOF
    Hello
    All
