# container-gpp
Generic Preprocessor in a small-ish container.

[GPP](https://logological.org/gpp) is a generic preprocessor that can be used to
preprocess text files. This Dockerfile should help using it where not avaiable.

To build the container image using podman:

    $ podman build -t container-gpp:0.0.0 .

Or, if you're still using docker:

    # docker build -t container-gpp:0.0.0 .
