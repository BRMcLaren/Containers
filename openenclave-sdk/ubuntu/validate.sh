git clone --recursive https://github.com/openenclave/openenclave.git --branch v0.9.x
cd openenclave
mkdir build
cd build
cmake -G "Ninja" ..
ninja
ctest
