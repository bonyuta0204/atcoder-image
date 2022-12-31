FROM alpine:3.14

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk upgrade && apk add --no-cache vim \
        git \
        make \
        bash \
        neovim \
        curl \
        npm \
        g++ \
        python3 \
        build-base


RUN git clone https://github.com/bonyuta0204/dotfiles.git && \
              cd dotfiles && \
              make

WORKDIR /root/problems

CMD ["bash"]

