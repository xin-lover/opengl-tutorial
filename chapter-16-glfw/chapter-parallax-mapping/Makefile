obj=main.o glad.o texture.o
cxxflags = -std=c++11

vpath %.c ../glad/src
vpath %.cpp ../public
vpath %.h ../glad/include

a.out:$(obj)
	g++ $(cxxflags) $(obj) -framework OpenGL -lglfw -o a.out

main.o:main.cpp
	g++ $(cxxflags) -I../glad/include -c main.cpp

glad.o:glad.c
	g++ $(cxxflags) -I../glad/include -c $<

texture.o:texture.cpp
	g++ $(cxxflags) -I../glad/include -c $<

PHONY:clean
clean:
	-rm $(obj) a.out