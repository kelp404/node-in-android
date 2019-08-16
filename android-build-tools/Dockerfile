FROM ubuntu:18.04

ENV PATH=$PATH:/root/ndk/prebuilt/linux-x86_64/bin:/root/ndk:/root/node-in-android/android-build-tools
ENV NDK=/root/ndk
ENV NDK_VERSION=android-ndk-r17c
ENV NDK_FILENAME=$NDK_VERSION\-linux-x86_64.zip
ENV NDK_URL=https://dl.google.com/android/repository/$NDK_FILENAME
ENV USE_CCACHE=0

CMD ["/bin/bash"]

USER root
WORKDIR /root

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install apt-transport-https bash-completion vim p7zip-full httpie git
# enable bash-completeion for root user (other users works by default)
RUN (echo && echo '[ -f /etc/bash_completion ] && ! shopt -oq posix && . /etc/bash_completion') >> ~/.bashrc

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install gcc g++ gcc-multilib g++-multilib
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install ccache
RUN ccache -M 1G

RUN echo "Downloading NDK" >&2 && \
    http -d -o $NDK_FILENAME GET $NDK_URL && \
    echo "Decompressing NDK" >&2 && \
    bash -c "7z x $NDK_FILENAME | grep -vE '^Extracting|^$'; exit \${PIPESTATUS[0]}" && \
    rm $NDK_FILENAME && \
    mv $NDK_VERSION ndk
