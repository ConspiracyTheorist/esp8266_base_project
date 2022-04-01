
echo ""
echo "*************************************"
echo "Autosetup esp8266 toochain and ESP8266_RTOS_SDK on linux x64"
echo ""
sudo apt-get install gcc git wget make libncurses-dev flex bison gperf python python3-serial
mkdir ~/esp8266
cd ~/esp8266
wget https://dl.espressif.com/dl/xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz
tar -xzf ./xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz
rm ./xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz
echo export PATH="\$PATH:\$HOME/esp8266/xtensa-lx106-elf/bin" >> ~/.profile
source ~/.profile
echo ""
echo "*************************************"
echo "toolchain installed to: $HOME/esp8266/xtensa-lx106-elf"
echo "version is:"
xtensa-lx106-elf-gcc --version
echo ""
echo "*************************************"
echo ""
cd ~/esp8266
git clone --recursive https://github.com/espressif/ESP8266_RTOS_SDK.git
echo export IDF_PATH="\$HOME/esp8266/ESP8266_RTOS_SDK" >> ~/.profile
source ~/.profile
python -m pip install --user -r $IDF_PATH/requirements.txt
echo ""
echo "*************************************"
echo "ESP8266_RTOS_SDK installed to IDF_PATH: $IDF_PATH"
echo ""

