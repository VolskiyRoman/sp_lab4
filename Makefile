CC = g++
CFLAGS = -Wall -c
LDFLAGS = -Wall
SOURCES = main.cpp calculator.cpp
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE = mycalculator

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *.o $(EXECUTABLE)
