SOURCE_FILES=$(wildcard src/*.c)\
			 $(wildcard src/Geometry/*.c)\
			 $(wildcard src/View/*.c)\

windows:
	gcc -g --std=c99 -I./include -L./lib $(SOURCE_FILES) -lglfw3dll -o bin/test

linux:
	gcc -g --std=c99 -I./include $(SOURCE_FILES) -lglfw -lm -o bin/test

run:
	./bin/test
