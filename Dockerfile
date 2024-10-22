FROM ghcr.io/mucksie/tinytex:0.53

### install make
RUN apt-get update \
 && apt-get install --yes \
    make \
### clean
 && apt-get clean \
 && rm --recursive --force /var/lib/apt/lists/* \
### install required tex packages
 && tlmgr install \
    changepage \
    fancyhdr \
    needspace \
    parskip

WORKDIR /src

CMD ["make", "stage"]
