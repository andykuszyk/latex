FROM alpine 
RUN apk update && \
    apk add texlive git python3 curl make bash && \
    wget https://github.com/jgm/pandoc/releases/download/2.9.2.1/pandoc-2.9.2.1-linux-amd64.tar.gz && \
    tar xvf pandoc-2.9.2.1-linux-amd64.tar.gz && \
    cp pandoc-2.9.2.1/bin/* bin && \
    rm -rf pandoc-2.9.2.1 && \
    rm pandoc-2.9.2.1-linux-amd64.tar.gz 
