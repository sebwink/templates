CXX=c++
CXXFLAGS=-std=c++14 -Wall -Wextra -Werror -pedantic

#INCLUDE=
#LDFLAGS=
#RUNPATH=

BINARIES = $(patsubst %.cpp, %, $(wildcard *.cpp))
OBJECTS = $(patsubst %.cpp, %.o, $(wildcard *.cpp))

all : $(OBJECTS) $(BINARIES)

% : %.o
	$(CXX) -o $@ $< $(LDFLAGS) -Wl,-rpath=$(RUNPATH)

%.o : %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDE) -c -o $@ $<

clean :
	rm -f *.o

destroy : clean
	rm -f $(BINARIES)
