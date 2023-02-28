#ifndef HELLO_WORLD_H
#define HELLO_WORLD_H

#include <stdio.h>
// Declare the 'hello()' function, which takes no arguments and returns a
// 'const char *', i.e. a pointer to a character (in this case the first
// character in a string). The function itself is defined in the hello_world.c
// source file. Ths function is called by the test case(s) in the test source
const char *hello(void);

#endif

// ini di sebut include guard yang memastikan headernya hanya
// di sertakan sekali dapat juga mengunakan #param

// Fungsi ini dipanggil oleh kasus uji di sumber pengujian
// buat nguji codenya