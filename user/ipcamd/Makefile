EXEC = ipcamd
OBJS += ipcamd.o
OBJS += config.o
OBJS += system.o
OBJS += jpegsign.o
OBJS += jpegdecode.o
OBJS += motion.o
OBJS += v4l2_control.o

CFLAGS += -I../../$(LINUXDIR)/include

LDLIBS += -lmicrohttpd -lpthread #-ljpeg -lcrypto
CFLAGS += -MD -std=gnu99
CFLAGS += -I../../lib/libmicrohttpd/src/include
LDFLAGS += -L../../lib/libmicrohttpd/src/daemon/.libs

#all:
#	$(CC) $(CFLAGS) $(LDFLAGS) -std=gnu99 -o ipcamd ipcamd.c $(LDLIBS)

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LDLIBS)

clean:
	-rm -f $(EXEC) *.elf *.gdb *.o *.d
	
romfs:
	$(ROMFSINST) /bin/$(EXEC)
	#$(ROMFSINST) /bin/dlipcamd
	if [ -e romfs/etc/private.pem ]; then $(ROMFSINST) /etc/private.pem; fi

-include *.d
