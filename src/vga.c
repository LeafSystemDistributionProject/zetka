#include <string.h>
#include <stdint.h>

#include "vga.h"

uint8_t *bufboot = (uint8_t*)0xB8000;

void vga(void) {
    for (size_t x = 0; x < 200; x++) {
        for (size_t y = 0; y < 100; y++) {
            *bufboot++ = ' ';
            *bufboot++ = 0xFFFFFFFF;
        }
    }
}
