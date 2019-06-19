## Assembly Playground 
ARM v8 Assembly Programs which is tested on Raspberry Pi 3 B+ running Ubuntu 18 aarch64 

### Install
For Compiling and running you would require to have the following steps done and installed in your rpi or your system 
  - `libc6:armhf`
  - `libstdc++6:armhf`
  - `gcc-arm-linux-gnueabihf`
  - `binutils-arm-linux-gnu`/ `binutils-arm-linux-gnueabihf`

Steps to Install 
1. `sudo dpkg --add-architecture armhf`
2. `sudo apt update`
3. `sudo apt install libc6:armhf`
4. `sudo apt install libstdc++6:armhf`
5. `sudo apt install binutils-arm-linux-gnueabihf`
6. `sudo apt install gcc-arm-linux-gnueabihf`

## Testing 
For testing if everything is done correctly easiest way is using the makefile in this repo
Steps
1. `make file_name=first`
  ```
$ make file_name=first
$ arm-linux-gnueabihf-as -o first.o first.s
$ arm-linux-gnueabihf-gcc -o ile_name first.o
  ```
2. `./first ; echo $?`
```
$ ./first ; echo $?
$ 2
```
It should print Register value ie. `2` in this case 

You can use this Makefile to compile any assembly program, you do not require to specify the extension(`.s`) when using the make command 

`make file_name=$name_of_the_file` then run the executable 

`make clean` will remove the compiled compiled files

