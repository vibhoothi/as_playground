# Makefile
all: $file_name

$file_name: $(file_name).o
	arm-linux-gnueabihf-gcc -o $@ $+

$(file_name).o : $(file_name).s
	arm-linux-gnueabihf-as -o $@ $<

clean:
	rm -vf $(file_name) *.o
