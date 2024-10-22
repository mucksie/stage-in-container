FROM ghcr.io/mucksie/tinytex:0.53

RUN tlmgr install \
    changepage \
    fancyhdr \
    needspace \
    parskip
