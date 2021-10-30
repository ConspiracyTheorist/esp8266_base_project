#ifndef _MODULE_H_
#define _MODULE_H_

#include <stdint.h>

//module public define
#define DEFAULT_VARIABLE_VALUE (uint32_t)40

//global variable declaration
extern  uint32_t global_module_variabele;

//module public fucntion decloration
void module_print_variabele(uint32_t test);

#endif /*_MODULE_H_*/