sudo docker build . -t sgxdcap
sudo docker run -it --device /dev/sgx:/dev/sgx sgxdcap:latest

then

git clone --recursive https://github.com/openenclave/openenclave.git --branch v0.9.x
cd openenclave
mkdir build
cd build
cmake -G "Ninja" ..
ninja
ctest