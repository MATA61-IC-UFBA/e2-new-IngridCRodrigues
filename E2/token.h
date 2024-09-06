/* token.h */
#ifndef TOKEN_H
#define TOKEN_H

#include <stdio.h>

enum t_number {
    NUMBER = 256,
    ERROR
};

extern int yylval;

#endif
