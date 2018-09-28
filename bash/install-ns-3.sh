#!/bin/bash
hg clone http://code.nsnam.org/bake
export BAKE_HOME=`pwd`/bake 
export PATH=$PATH:$BAKE_HOME
export PYTHONPATH=$PYTHONPATH:$BAKE_HOME
bake.py check
bake.py configure -e ns-3.28
bake.py show   
bake.py deploy
