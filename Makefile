CFLAGS = -Wall -std=c11 -ggdb3 `pkg-config --cflags sdl2` -Wno-misleading-indentation
LDFLAGS = -lm `pkg-config --libs sdl2`

all: swrend

swrend: swrend.c
	gcc $(CFLAGS) $(LDFLAGS) $^ -o $@
