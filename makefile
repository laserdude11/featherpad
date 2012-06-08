CPP = g++
CFLAGS = `pkg-config gtkmm-3.0 --libs --cflags`

exec = featherpad

all: $(exec)

$(exec): src/featherpad.cc src/EditorWindow.cc
	$(CPP) -o $(exec) src/featherpad.cc src/EditorWindow.cc $(CFLAGS) -I./include
