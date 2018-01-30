CC=cc
CCFLAGS=-std=c11 -Wall -Wextra -Werror -pedantic

PROGRAM_NAME=main

#INCLUDE=
#LDFLAGS=
#RUNPATH=

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))

all : $(PROGRAM_NAME)

$(PROGRAM_NAME) : $(OBJECTS)
	$(CC) -o $@ $^ $(LDFLAGS) -Wl,-rpath=$(RUNPATH)

%.o : %.c 
	$(CC) $(CCFLAGS) $(INCLUDE) -c -o $@ $<

clean :
	rm -f *.o

destroy : clean
	rm -f $(PROGRAM_NAME)
