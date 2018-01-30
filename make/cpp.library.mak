CXX=c++
CXXFLAGS=-std=c++14 -Wall -Wextra -Werror -pedantic

AR=ar

LIB_NAME=test
INCLUDE_DIR=.
SRC_DIR=.
OBJ_DIR=.
LIB_DIR=.
SHARED_LIB=$(LIB_DIR)/lib$(LIB_NAME).so
STATIC_LIB=$(LIB_DIR)/lib$(LIB_NAME).a

#INCLUDE=
#LDFLAGS=
#RUNPATH=

OBJECTS = $(patsubst $(SRC_DIR)/%.cpp, $(OBJ_DIR)/%.o, $(wildcard $(SRC_DIR)/*.cpp))

all : shared static

shared : $(SHARED_LIB)

static : $(STATIC_LIB)

$(SHARED_LIB) : $(OBJECTS)
	$(CXX) $(LDFLAGS) -shared -o $@ $^ -Wl,-rpath=$(RUNPATH)

$(STATIC_LIB) : $(OBJECTS)
	$(AR) rcs $@ $^

$(OBJ_DIR)/%.o : $(SRC_DIR)/%.cpp $(INCLUDE_DIR)/%.hpp
	$(CXX) $(CXXFLAGS) -fPIC $(INCLUDE) -c -o $@ $<

clean :
	rm -f $(OBJECTS)

destroy : clean
	rm -f $(SHARED_LIB) $(STATIC_LIB)
