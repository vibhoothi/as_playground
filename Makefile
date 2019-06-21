# Makefile
all: $(file_name)

$(file_name): $(file_name).o
	arm-linux-gnueabihf-gcc -g -o $@ $+

$(file_name).o : $(file_name).s
	arm-linux-gnueabihf-as -g -mfpu=neon -o $@ $<

clean:
	rm -vf $(file_name) *.o
