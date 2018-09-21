FROM ns3-env
MAINTAINER Linus Lee <admin@geekfan.top>
ENV TZ=Asia/Shanghai
LABEL Description="Docker image for NS-3 Network Simulator"
RUN hg clone http://code.nsnam.org/bake \
    && export BAKE_HOME=`pwd`/bake \
    && export PATH=$PATH:$BAKE_HOME \
    && export PYTHONPATH=$PYTHONPATH:$BAKE_HOME \
    && bake.py check \
    && bake.py configure -e ns-3.28 \
    && bake.py show \
    && bake.py deploy
