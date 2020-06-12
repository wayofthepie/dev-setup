FROM ubuntu:20.04
SHELL [ "/bin/bash", "-c" ]

ENV DEBIAN_FRONTEND noninteractive
ENV NODE_VERSION 12.18.0

RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    pkgconf \
    cmake \
    libtool-bin \
    unzip \
    gettext \
    bsdmainutils # for col \
    && col -h \
    && rm -rf /var/lib/apt/lists/* 


RUN mkdir -p /var/tmp/setup \
    && cd /var/tmp/setup \
    && git clone https://github.com/neovim/neovim.git \
    && cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo \
    && make install 

RUN groupadd dev --gid 1337 \
    && useradd \
        -d /home/dev \
        --create-home \
        -g dev \
        --uid 1337 \
        --shell /bin/bash \
        dev
USER dev
ENV NVM_INTEGRITY f068e17dacb88f73302790cc076956c7a0d459ce9b01df842ff3e75744f9e2fe
ENV NVM_DIR /home/dev/.nvm
RUN mkdir /var/tmp/dev-setup && cd /var/tmp/dev-setup \
    && curl -s -O https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh \
    && if ! [ "$NVM_INTEGRITY" = "$(sha256sum install.sh | awk '{print $1}')" ]; then \
    echo "nvm installer checksum failure!"; exit 1; \
    fi \
    && chmod +x install.sh && ./install.sh \
    && source ${NVM_DIR}/nvm.sh \
    && nvm install $NODE_VERSION \
    && npm install -g yarn \
    && git clone https://github.com/wayofthepie/dev-setup \ 
    && cd dev-setup \
    && ./setup.sh \
    && curl -fLo /home/dev/.local/share/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
    && nvim +PlugInstall +qall 2>&1 | tr -d "[:cntrl:]"
 

