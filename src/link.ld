ENTRY(bstart)
SECTIONS
{
	. = 0x1000;

	.bstart : { __bstart_start = .; *(.bstart) }
	.text : { __text_start = .; *(.text) }
	.data : { __data_start = .; *(.data) }
	.rodata : { __rodata_start = .; *(.rodata) }
	.bss : { __bss_start = .; *(.bss) }

	__end = .;

}