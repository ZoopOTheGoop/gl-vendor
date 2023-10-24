CC=gcc
LIBS=-lGL -lGLX -lX11
TARGET=gl_vendor

all: gl_vendor

gl_vendor: gl_vendor.c
	$(CC) gl_vendor.c $(LIBS) -o $(TARGET)

run: gl_vendor
	./$(TARGET)

.PHONY: clean

clean:
	rm $(TARGET)