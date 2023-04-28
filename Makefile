CROSSCOMPILE := arm-buildroot-linux-gnueabihf-

CFLAGS 	:= -Wall -O2 -c
CFLAGS  += -I$(PWD)/include

LDFLAGS := -lm -lfreetype

CC 	:= $(CROSSCOMPILE)gcc
LD 	:= $(CROSSCOMPILE)ld

OBJS := main.o \
			Display/disp_manager.o        \
			Display/fb.o                  \
			Encoding/ascii.o              \
			Encoding/utf-16be.o           \
			Encoding/encoding_manager.o   \
			Encoding/utf-8.o              \
			Encoding/utf-16le.o           \
			Draw/draw.o                   \
			Fonts/ascii.o                 \
			Fonts/gbk.o                   \
			Fonts/freetype.o              \
			Fonts/fonts_manager.o

all: $(OBJS)
	$(CC) $(LDFLAGS) -o show_file $^

clean:
	rm -f show_file
	rm -f $(OBJS)

%.o:%.c
	$(CC) $(CFLAGS) -o $@ $<

