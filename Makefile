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
