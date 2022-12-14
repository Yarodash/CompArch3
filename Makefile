CC=g++
CFLAGS=-c
CACHE_FOLDER=CACHE
EXECUTABLE_FOLDER=.
EXECUTABLE=result

all: init link

init:
	mkdir -p $(CACHE_FOLDER)

link: $(CACHE_FOLDER)/main.o $(CACHE_FOLDER)/calculator.a
	$(CC) $(CACHE_FOLDER)/main.o $(CACHE_FOLDER)/calculator.a -o $(EXECUTABLE_FOLDER)/$(EXECUTABLE)

$(CACHE_FOLDER)/main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp -o $(CACHE_FOLDER)/main.o

$(CACHE_FOLDER)/calculator.o: calculator.cpp
	$(CC) $(CFLAGS) calculator.cpp -o $(CACHE_FOLDER)/calculator.o

$(CACHE_FOLDER)/calculator.a: $(CACHE_FOLDER)/calculator.o
	ar -rcs $(CACHE_FOLDER)/calculator.a $(CACHE_FOLDER)/calculator.o

clean:
	rm -rf $(CACHE_FOLDER)

run:
	@./$(EXECUTABLE_FOLDER)/$(EXECUTABLE)

