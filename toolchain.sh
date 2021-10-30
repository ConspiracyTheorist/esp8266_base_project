echo ""
echo "*************************************"
echo "Autosetup esp8266 toochain and ESP8266_RTOS_SDK on linux x64"
echo ""
sudo apt-get install gcc git wget make libncurses-dev flex bison gperf python python-serial
mkdir ~/esp
cd ~/esp
wget https://dl.espressif.com/dl/xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz
tar -xzf ./xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz
rm ./xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz
echo PATH="\$PATH:\$HOME/esp/xtensa-lx106-elf/bin" >> ~/.profile
source ~/.profile
echo ""
echo "*************************************"
echo "toolchain installed to: $HOME/esp/xtensa-lx106-elf"
echo "version is:"
xtensa-lx106-elf-gcc --version
echo ""
echo "*************************************"
echo ""
cd ~/esp
git clone --recursive https://github.com/espressif/ESP8266_RTOS_SDK.git
echo IDF_PATH="\$HOME/esp/ESP8266_RTOS_SDK" >> ~/.profile
source ~/.profile
python -m pip install --user -r $IDF_PATH/requirements.txt
echo ""
echo "*************************************"
echo "ESP8266_RTOS_SDK installed to IDF_PATH: $IDF_PATH"
echo ""
