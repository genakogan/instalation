%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int yylex(); // Declaration of yylex function

int yyerror(char *);
char *yytext;

typedef struct node {
    char *token;
    struct node *left;
    struct node *right;
} node;

node *mknode(char *token, node *left, node *right);
void printtree(node *tree);

#define YYSTYPE struct node *
%}

%token NUM PLUS MINUS
%left PLUS MINUS

%%

s: exp {
    printf("OK\n");
    printtree($1);
}

exp: exp PLUS exp {
    $$ = mknode("+", $1, $3);
} | exp MINUS exp {
    $$ = mknode("-", $1, $3);
} | NUM {
    $$ = mknode(yytext, NULL, NULL);
};

%%

#include "lex.yy.c"

int main() {
    return yyparse();
}

node *mknode(char *token, node *left, node *right) { 
    node *newnode = (node*)malloc(sizeof(node));
    newnode->token = strdup(token);
    newnode->left = left;
    newnode->right = right;
    return newnode;
}

void printtree(node *tree) { 
    if(tree) {
        printf("%s\n", tree->token);
        printtree(tree->left);
        printtree(tree->right);
    }
}

int yyerror(char *s) {
    printf("MY ERROR: %s\n", s);
    return 0;
}

