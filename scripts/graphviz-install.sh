set -e

CURRENT_DIR=$PWD
GRAPHVIZ_VERSION='2.44.0'
WORKSPACE=$HOME/graphviz-workspace

mkdir $WORKSPACE
cd $WORKSPACE
wget --no-check-certificate https://www2.graphviz.org/Packages/stable/portable_source/graphviz-${GRAPHVIZ_VERSION}.tar.gz
tar -xf graphviz-${GRAPHVIZ_VERSION}.tar.gz
cd graphviz-${GRAPHVIZ_VERSION}
./configure --with-pic --disable-shared --enable-static
make -j4
cd .. # equal to `cd $WORKSPACE`
ln -s $WORKSPACE/graphviz-${GRAPHVIZ_VERSION}/cmd/dot/dot $CURRENT_DIR/dot
