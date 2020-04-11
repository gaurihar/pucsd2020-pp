CC = gcc 
CFLAGS = -fPIC -Wall -Wextra -O2 -g 
LDFLAGS = -shared 
RM = rm -f 
TARGET_LIB = libcalci.so

SRCS = src/addition.c src/subtraction.c  src/multiplication.c src/division.c
OBJS = $(SRCS:.c=.o)

.PHONY: all
all: ${TARGET_LIB}
		

$(TARGET_LIB): $(OBJS)
	$(CC) ${LDFLAGS} -o $@ $^

path: 
	LD_LIBRARY_PATH=.

.PHONY: clean
clean:
	-${RM} ${TARGET_LIB} ${OBJS} 
