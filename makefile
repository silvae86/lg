clean: 
	rm -f ./lg

build:
	C_INCLUDE_PATH=/usr/include/libusb-1.0/ gcc main.c -lncurses -lusb-1.0 -o lg

make-executable: 
	chmod +x ./lg

run: clean build make-executable
	sudo ./lg +

all: run