# Compiler
CXX := g++
CXXFLAGS := -std=c++17 -Wall -Wextra -O2 -Iinclude

# Raylib
LDFLAGS := -Llib -lraylib \
	-lGL -lm -lpthread -ldl -lrt -lX11

# Files
SRC := src/main.cpp
OUT := game

all: $(OUT)

$(OUT): $(SRC)
	$(CXX) $(CXXFLAGS) $^ -o $@ $(LDFLAGS)

run: $(OUT)
	LD_LIBRARY_PATH=lib ./$(OUT)

clean: 
	rm -f $(OUT)

.PHONY: all run clean