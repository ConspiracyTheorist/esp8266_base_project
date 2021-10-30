#include "module.h"

#include <stdio.h>
#include "esp_system.h"


//module private define
#define DEFAULT_VARIABLE_VALUE_IN_MODULE DEFAULT_VARIABLE_VALUE+2

//global variable 
uint32_t global_module_variabele = DEFAULT_VARIABLE_VALUE_IN_MODULE;

//module private function
static void print_variabele(){
    printf("Correct, %d is the answer!\r\n",global_module_variabele);
}

//module public fucntion
void module_print_variabele(uint32_t test){
    printf("\r\n++++++ sart in module.c ++++++\r\n");
    if(test != DEFAULT_VARIABLE_VALUE_IN_MODULE){
        print_variabele();
    }else{
        printf("I have no answer for you\r\n");
    }
    printf("\r\n++++++ end in module.c  ++++++\r\n");
}

