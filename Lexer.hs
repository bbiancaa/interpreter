module Lexer where 

import Data.Char 

data Expr = BTrue
          | BFalse 
          | Num Int 
          | Add Expr Expr 
          | Sub Expr Expr 
          | Mul Expr Expr 
          | Div Expr Expr 
          | And Expr Expr 
          | Or Expr Expr 
          | Not Expr
          | GreaterThan Expr Expr
          | GreaterOrEqual Expr Expr 
          | LessThan Expr Expr 
          | LessOrEqual Expr Expr 
          | Equal Expr Expr 
          | If Expr Expr Expr 
          | Var String
          | Lam String Ty Expr 
          | App Expr Expr
          | Paren Expr
          | Let String Expr Expr 
         -- | While Int Expr
         | Head Expr Expr Expr
         | Tail Expr Expr Expr
         | TailPrint (Expr, Expr)
          deriving Show

data Ty = TBool 
        | TNum 
        | TFun Ty Ty
        | TList Ty -- Adicione esta linha para incluir TList
        deriving (Show, Eq)

data Token = TokenTrue 
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd
           | TokenSub
           | TokenMul
           | TokenDiv
           | TokenAnd 
           | TokenOr 
           | TokenNot
           | TokenGreaterThan
           | TokenGreaterOrEqual
           | TokenLessThan
           | TokenLessOrEqual
           | TokenEqual
           | TokenIf 
           | TokenThen 
           | TokenElse
           | TokenVar String 
           | TokenLam
           | TokenArrow
           | TokenLParen
           | TokenRParen
           | TokenLet 
           | TokenEq 
           | TokenIn
           | TokenColon
           | TokenBoolean 
           | TokenNumber
           | TokenHead
           | TokenTail
           | TokenRBracket
           | TokenLBracket
           | TokenComma
         --  | TokenWhile
         --  | TokenDo
           deriving (Show, Eq)

isSymb :: Char -> Bool 
isSymb c = c `elem` "+&\\->()*!||/==<:[]"

lexer :: String -> [Token]
lexer [] = [] 
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = TokenRParen : lexer cs
lexer ('[':cs) = TokenLBracket : lexer cs
lexer (']':cs) = TokenRBracket : lexer cs
lexer (',':cs) = TokenComma : lexer cs
lexer (c:cs) | isSpace c = lexer cs 
             | isDigit c = lexNum (c:cs)
             | isSymb c = lexSymbol (c:cs)
             | isAlpha c = lexKW (c:cs)
lexer _ = error "Lexical error!"

lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of 
              (num, rest) -> TokenNum (read num) : lexer rest

lexSymbol :: String -> [Token]
lexSymbol cs = case span isSymb cs of 
                 ("+", rest)  -> TokenAdd : lexer rest
                 ("-", rest)  -> TokenSub : lexer rest
                 ("*", rest)  -> TokenMul : lexer rest
                 ("/", rest)  -> TokenDiv : lexer rest    
                 ("&&", rest) -> TokenAnd : lexer rest
                 ("||", rest) -> TokenOr : lexer rest 
                 ("!", rest) -> TokenNot : lexer rest
                 (">", rest) -> TokenGreaterThan : lexer rest
                 (">=", rest) -> TokenGreaterOrEqual : lexer rest 
                 ("<", rest) -> TokenLessThan : lexer rest 
                 ("<=", rest) -> TokenLessOrEqual : lexer rest 
                 ("==", rest) -> TokenEqual : lexer rest 
                 ("\\", rest) -> TokenLam : lexer rest 
                 ("->", rest) -> TokenArrow : lexer rest 
                 ("=", rest)  -> TokenEq : lexer rest 
                 (":", rest)  -> TokenColon : lexer rest 
                 _ -> error "Lexical error: invalid symbol!"

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of 
             ("true", rest) -> TokenTrue : lexer rest 
             ("false", rest) -> TokenFalse : lexer rest
             ("if", rest) -> TokenIf : lexer rest 
             ("then", rest) -> TokenThen : lexer rest 
             ("else", rest) -> TokenElse : lexer rest 
             ("head", rest) -> TokenHead : lexer rest 
             ("tail", rest) -> TokenTail : lexer rest 
          --   ("while", rest) -> TokenWhile : lexer rest
           --  ("do", rest) -> TokenDo : lexer rest
             ("let", rest) -> TokenLet : lexer rest 
             ("in", rest) -> TokenIn : lexer rest 
             ("Num", rest) -> TokenNumber : lexer rest 
             ("Bool", rest) -> TokenBoolean : lexer rest 
             (var, rest) -> TokenVar var : lexer rest 


