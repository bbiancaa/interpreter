{
module Parser where

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parserError } 


%token 
    num         { TokenNum $$ }
    '+'         { TokenAdd }
    '-'         { TokenSub }
    '*'         { TokenMul }
    '/'         { TokenDiv }
    "&&"        { TokenAnd }
    "||"        { TokenOr }
    '!'         { TokenNot }
    '>'         { TokenGreaterThan }
    '>='        { TokenGreaterOrEqual }
    '<'         { TokenLessThan }
    '<='        { TokenLessOrEqual }
    '=='        { TokenEqual }
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
--    while       { TokenWhile }
 --   do          { TokenDo }
    '['         { TokenLBracket }
    ']'         { TokenRBracket }
    ','         { TokenComma }
    head         { TokenHead }
    tail         { TokenTail }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    '='         { TokenEq }
    let         { TokenLet }
    in          { TokenIn }
    Bool        { TokenBoolean }
    Num         { TokenNumber }
    ':'         { TokenColon }

%left '+' '-'
%left '*'
%left '=='
%%

Exp         : num                           { Num $1 }
            | true                          { BTrue }
            | false                         { BFalse }
            | Exp '+' Exp                   { Add $1 $3 }
            | Exp '-' Exp                   { Sub $1 $3 }
            | Exp '*' Exp                   { Mul $1 $3 }
            | Exp '/' Exp                   { Div $1 $3 }
            | Exp "&&" Exp                  { And $1 $3 }
            | Exp "||" Exp                  { Or $1 $3 }
            | '!' Exp                       { Not $2 }
            | Exp '>' Exp                   { GreaterThan $1 $3 }
            | Exp '>=' Exp                  { GreaterOrEqual $1 $3 }
            | Exp '<' Exp                   { LessThan $1 $3 }
            | Exp '<=' Exp                  { LessOrEqual $1 $3 }
            | Exp '==' Exp                  { Equal $1 $3 }
            | if Exp then Exp else Exp      { If $2 $4 $6 }
            | var                           { Var $1 }
            | '\\' var ':' Type "->" Exp    { Lam $2 $4 $6 }
            | Exp Exp                       { App $1 $2 }
            | '(' Exp ')'                   { Paren $2 }
            | let var '=' Exp in Exp        { Let $2 $4 $6 }
            | head '[' Exp ',' Exp ',' Exp ']'  { Head $3 $5 $7 }
            | tail '[' Exp ',' Exp ',' Exp ']'  { Tail $3 $5 $7 }

Type    : Bool                              { TBool }
        | Num                               { TNum }
        | '(' Type "->" Type ')'            { TFun $2 $4 }
        | '[' Type ',' ']'                  { TList $2 }


{

parserError :: [Token] -> a 
parserError _ = error "Syntax error!"

}