CXX=c++
CXXFLAGS=-std=c++14 -Wall -Wextra -Werror -pedantic

PROGRAM_NAME=app

INCLUDE=-I../include
LDFLAGS=-L../lib -ltest
RUNPATH=../lib

OBJECTS = $(patsubst %.cpp, %.o, $(wildcard *.cpp))

all : $(PROGRAM_NAME)

$(PROGRAM_NAME) : $(OBJECTS)
	$(CXX) -o $@ $^ $(LDFLAGS) -Wl,-rpath=$(RUNPATH)

%.o : %.cpp 
	$(CXX) $(CXXFLAGS) $(INCLUDE) -c -o $@ $<

clean :
	rm -f *.o

destroy : clean
	rm -f $(PROGRAM_NAME)
