CC=gcc
LIBS=-lGL -lGLX -lX11
TARGET?=gl_vendor
INSTALL_PREFIX?=/usr/local/bin

all: gl_vendor

target: gl_vendor.c
	$(CC) gl_vendor.c $(LIBS) -o $(TARGET)

run: target
	./$(TARGET)

install: target
	cp $(TARGET) $(INSTALL_PREFIX)/

.PHONY: clean uninstall

uninstall:
	rm -f $(INSTALL_PREFIX)/$(TARGET)

clean:
	rm -f $(TARGET)