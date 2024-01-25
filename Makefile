CC = gcc
LD = ld
CCFLAGS = -W all -c -D BUILD_DLL
LDFLAGS = -shared -o
LIBS = -l kernel32 -l user32

TARGET = libTP211-Hash.dll
OBJ = main.o

all: $(TARGET)

$(TARGET): $(OBJ)
    $(LD) $(LDFLAGS) $@ $^ $(LIBS)

main.o: main.c
    $(CC) $(CCFLAGS) $< -o $@

clean:
    del /s /q $(OBJ)
    del /s /q $(TARGET)
