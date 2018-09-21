FROM ubuntu:16.04

MAINTAINER Linus Lee <admin@geekfan.top>
COPY bash/requirements.txt .
ENV TZ=Asia/Shanghai
LABEL Description="Docker image for NS-3 Network Simulator"
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt-get  update \
    && apt-get install -y gcc g++ python python-dev \
    && apt-get install -y qt5-default \
    && apt-get install -y mercurial python-setuptools git \
    && apt-get install -y python-pygraphviz python-kiwi python-pygoocanvas libgoocanvas-dev ipython \
    && apt-get install -y gir1.2-goocanvas-2.0 python-gi python-gi-cairo python-pygraphviz python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython ipython3  \
    && apt-get install -y openmpi-bin openmpi-common openmpi-doc libopenmpi-dev \
    && apt-get install -y autoconf cvs bzr unrar \
    && apt-get install -y gdb valgrind \
    && apt-get install -y uncrustify \
    && apt-get install -y doxygen graphviz imagemagick \
    && apt-get install -y texlive texlive-extra-utils texlive-latex-extra texlive-font-utils texlive-lang-portuguese dvipng \
    && apt-get install -y python-sphinx dia \
    && apt-get install -y gsl-bin libgsl2 libgsl-dev \
    && apt-get install -y flex bison libfl-dev \
    && apt-get install -y tcpdump sqlite sqlite3 libsqlite3-dev libxml2 libxml2-dev \
    && apt-get install -y python-pip cmake libc6-dev libc6-dev-i386 libclang-dev llvm-dev automake \
    && pip install cxxfilt \
    && apt-get install -y libgtk2.0-0 libgtk2.0-dev \
    && apt-get install -y vtun lxc \
    && apt-get install -y libboost-signals-dev libboost-filesystem-dev \
    && apt-get install -y castxml \
    && pip install pygccxml \
    && pip install -r requirements.txt 











