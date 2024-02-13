#include <string.h>
#include <stdint.h>

#include "vga.h"
#include "zprint.h"

void vga(void);
void zprint(char *input);
void dstart(void);

void zetkamain(void) {
    vga();
    zprint("Zetka Bootloader.\n");
    zprint("Entering to LSDP/Deligma.");
    // dstart();
}

