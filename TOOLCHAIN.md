# Установка Toolchain

> [Инструкция](https://docs.espressif.com/projects/esp8266-rtos-sdk/en/latest/get-started/windows-setup.html)

1. Скачиваем [esp32_win32_msys2_environment_and_toolchain-20181001.zip](https://dl.espressif.com/dl/esp32_win32_msys2_environment_and_toolchain-20181001.zip)

2. Распаковываем архив так, что бы в пути **не было пробелов** далее в инструкции базовый путь `C:/esp8266/`.
После распаковки содержимого архива получим папку msys32 в `C:/esp8266/msys32`

3. Скачиваем файл [xtensa-lx106-elf-gcc8_4_0-esp-2020r3-win32.zip](https://dl.espressif.com/dl/xtensa-lx106-elf-gcc8_4_0-esp-2020r3-win32.zip) и распаковываем в папку `C:/esp8266/msys32/opt`

Получаем такую структуру дирректорий:

```
C:/esp8266/msys32/opt
    /xtensa-lx106-elf
        /bin  
        /include  
        /lib  
        /libexec  
        /share  
        /xtensa-lx106-elf
```

4. Запускаем `C:/esp8266/msys32/mingw32.exe` от имени Администратора и выполняем:
```


mkdir ~/esp && cd ~/esp

git clone --recursive https://github.com/espressif/ESP8266_RTOS_SDK.git
```
5. Добавляем переменные окружения в `C:/esp8266/msys32/home/{ИМЯ ПОЛЬЗОВАТЕЛЯ}/.bashrc`

```
# IDF_PATH for tools
export IDF_PATH=~/esp/ESP8266_RTOS_SDK
# GCC path
export PATH=$PATH:/opt/xtensa-lx106-elf/bin
```

6. **Перезапускаем** `C:/esp8266/msys32/mingw32.exe` и выполняем:

```
python -m pip install --user -r $IDF_PATH/requirements.txt
```

## Тест окружения - сборка примера

1. Запускаем `C:/esp8266/msys32/mingw32.exe` и выполняем:

```
cd ~/esp

cp -r $IDF_PATH/examples/get-started/hello_world .

cd ~/esp/hello_world

make menuconfig
```

2. Подключаем отладочную плату и определяем номер COM порта в Диспечере устройств Windows, например `COM4`

3. В menuconfig уставналиваем номер порта: `Serial flasher config` -> `Default serial port` -> `COM4` и выходим

4. Собираем проект (далее команды в `mingw32.exe`):

```
cd ~/esp/hello_world

make -j4 flash
```

5. Вывод лога можно посмотреть так (для выхода нажать `Ctrl` + `]`):

```
make monitor
```

