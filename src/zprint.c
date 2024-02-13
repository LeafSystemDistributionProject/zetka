#include <string.h>
#include <stdint.h>

#include "zprint.h"

char *buffboot = (char*)0xB8000; 
char fontcolor(int fg, int bg)  {
	return fg | bg << 4;
}

size_t strlenboot(const char *str) {
	size_t i = 0;
	while (str[i] != '\0')
		i++;

	return i;
}

void zprint(char *input) {
    for (size_t i = 0; i < strlenboot(input)+1; i++) {
        if (input[i] == '\n') {
            input[i] = ' ';
            for (size_t y = 0; y < 61; y++) {
                *buffboot++ = ' ';
                *buffboot++ = 0xFFFFFFFF;
            }
        }
        *buffboot++ = input[i]; 
        *buffboot++ = fontcolor(0, 15);
    }
}
