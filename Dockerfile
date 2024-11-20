FROM ghcr.io/mucksie/tinytex:0.54

### install required tex packages
RUN tlmgr install \
    changepage \
    fancyhdr \
    needspace \
    parskip

### install make
RUN apt-get update \
 && apt-get install --yes --no-install-recommends \
    make \
### clean
 && apt-get clean \
 && rm --recursive --force /var/lib/apt/lists/*

WORKDIR /src

CMD ["make", "stage"]
