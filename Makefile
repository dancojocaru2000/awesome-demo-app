.PHONY: all, static, clean

all: static, out/awesome-demo-app

obj/main.o: src/main.cpp
	mkdir -p obj
	if [ ! -z "$$VERSION" ];								\
	then												\
		g++ -D PROGRAM_VERSION="$$VERSION" -c -o $@ $^;	\
	else												\
		g++ -c -o $@ $^;								\
	fi

out/awesome-demo-app: obj/main.o
	mkdir -p out
	g++ -o $@ $^

static:
	cp static/. out

clean:
	rm -r obj
	rm -r out
