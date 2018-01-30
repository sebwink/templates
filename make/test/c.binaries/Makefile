CC=cc
CCFLAGS=-std=c11 -Wall -Wextra -Werror -pedantic

#INCLUDE=
#LDFLAGS=
#RUNPATH=

BINARIES = $(patsubst %.c, %, $(wildcard *.c))
OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))

all : $(OBJECTS) $(BINARIES)

% : %.o
	$(CC) -o $@ $< $(LDFLAGS) -Wl,-rpath=$(RUNPATH)

%.o : %.c 
	$(CC) $(CCFLAGS) $(INCLUDE) -c -o $@ $<

clean :
	rm -f *.o

destroy : clean
	rm -f $(BINARIES)
