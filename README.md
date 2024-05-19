# RAYLIB CPP WINDOWS by L.l

## Description

Here is a project to init a raylib project with C++ on Windows with the easiest way possible.

## Prerequisites

- [MingW64](https://www.youtube.com/watch?v=xWjXRV3mKa4&t=396s&ab_channel=GeekyScripts) : Compiler for Windows.
- [Raylib](https://github.com/raysan5/raylib/wiki/Working-on-Windows) : lib for graphic.

## Installation

1. Clone the repository :

    ```shell
    git clone https://github.com/LLEJAILLE/raylib_windows
    ```

2. Compile the project :
    There is two ways to compile the project : (using .bat file or using makefile)

    - Using .bat file :
    ```shell
    @echo off
    set RAYLIB_PATH=%cd%

    g++ -o raylibhelloworld.exe main.cpp -I%RAYLIB_PATH%\include -L%RAYLIB_PATH%\lib -lraylib -lgdi32 -lwinmm

    pause
    ```

    - Using makefile :
    ```shell
    CXX := g++
    CXXFLAGS := -Iinclude
    LDFLAGS := -Llib -lraylib -lgdi32 -lwinmm

    TARGET := code.exe

    SRCS := main.cpp

    OBJS := $(SRCS:.cpp=.o)

    all: $(TARGET)

    $(TARGET): $(OBJS)
        $(CXX) -o $@ $^ $(LDFLAGS)

    %.o: %.cpp
        $(CXX) -c $< -o $@ $(CXXFLAGS)

    clean:
        del $(OBJS) $(TARGET)

    fclean: clean
        del $(TARGET)

    .PHONY: all clean fclean
    ```

## Using the project

1. Run the project :
    - You just have to run the .exe file generated by the compilation.

