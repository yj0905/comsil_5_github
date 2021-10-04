cc=gcc
cflags = -W -g

target = rangearray
objects = main.o Array.o RangeArray.o

$(target) : $(objects)
	$(cc) $(cflags) -o $(target) $(objects)

%.o : %.c
	$(cc) $(cflags) -c $< -o $@

.PHONY : clean
clean :
	rm $(target) $(objects)