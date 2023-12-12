module Interpreter where 

import Lexer 
import Parser

isValue :: Expr -> Bool 
isValue BTrue = True 
isValue BFalse = True
isValue (Num _) = True 
isValue (Lam _ _ _) = True
isValue _ = False 

subst :: String -> Expr -> Expr -> Expr 
subst x n (Var v) = if (x == v) then
                      n 
                    else 
                      (Var v)
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2)
subst x n (Mul e1 e2) = Mul (subst x n e1) (subst x n e2)
subst x n (Div e1 e2) = Div (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)
subst x n (Not e1 ) = Not (subst x n e1)
subst x n (GreaterThan e1 e2) = GreaterThan (subst x n e1) (subst x n e2)
subst x n (GreaterOrEqual e1 e2) = GreaterOrEqual (subst x n e1) (subst x n e2)
subst x n (LessThan e1 e2) = LessThan (subst x n e1) (subst x n e2)
subst x n (LessOrEqual e1 e2) = LessOrEqual (subst x n e1) (subst x n e2)
subst x n (Equal e1 e2) = Equal (subst x n e1) (subst x n e2)
subst x n (If e1 e2 e3) = If (subst x n e1) (subst x n e2) (subst x n e3)
subst x n (Head e1 e2 e3) = Head (subst x n e1) (subst x n e2) (subst x n e3)
subst x n (Tail e1 e2 e3) = Tail (subst x n e1) (subst x n e2) (subst x n e3)
subst x n (TailPrint (e1, e2)) = TailPrint (subst x n e1, subst x n e2)
-- subst x n (While e1 e2) = While (subst x n e1) (subst x n e2)
subst x n (Paren e) = Paren (subst x n e)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
subst x n e = e 

step :: Expr -> Expr 
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num n) e) = Add (Num n) (step e)
step (Add e1 e2) = Add (step e1) e2 
step (Sub (Num n1) (Num n2)) = Num (n1 - n2) 
step (Sub (Num n) e) = Sub (Num n) (step e)
step (Sub e1 e2) = Sub (step e1) e2 
step (Mul (Num n1) (Num n2)) = Num (n1 * n2) 
step (Mul (Num n) e) = Mul (Num n) (step e)
step (Mul e1 e2) = Mul (step e1) e2 
step (Div (Num n1) (Num n2)) = Num (n1 `div` n2) 
step (Div (Num n) e) = Div (Num n) (step e)
step (Div e1 e2) = Div (step e1) e2 
step (And BFalse _) = BFalse 
step (And BTrue e) = e 
step (And e1 e2) = And (step e1) e2 
step (Or BFalse e) = e 
step (Or BTrue _) = BTrue 
step (Or e1 e2) = Or (step e1) e2 
step (Not BFalse ) = BTrue 
step (Not BTrue ) = BFalse 
step (Not e1) = Not (step e1) 
step (GreaterThan e1 e2) | isValue e1 && isValue e2 = case (e1, e2) of
                             (BTrue, BTrue) -> BFalse
                             (BTrue, BFalse) -> BTrue
                             (BFalse, BTrue) -> BFalse
                             (BFalse, BFalse) -> BFalse
                             (Num n1, Num n2) -> if n1 > n2 then BTrue else BFalse
step (GreaterOrEqual e1 e2) | isValue e1 && isValue e2 = case (e1, e2) of
                             (BTrue, BTrue) -> BFalse
                             (BTrue, BFalse) -> BTrue
                             (BFalse, BTrue) -> BFalse
                             (BFalse, BFalse) -> BFalse
                             (Num n1, Num n2) -> if n1 >= n2 then BTrue else BFalse
step (LessThan e1 e2) | isValue e1 && isValue e2 = case (e1, e2) of
                          (BTrue, BTrue) -> BFalse
                          (BTrue, BFalse) -> BFalse
                          (BFalse, BTrue) -> BTrue
                          (BFalse, BFalse) -> BFalse
                          (Num n1, Num n2) -> if n1 < n2 then BTrue else BFalse

step (LessOrEqual e1 e2) | isValue e1 && isValue e2 = case (e1, e2) of
                          (BTrue, BTrue) -> BFalse
                          (BTrue, BFalse) -> BFalse
                          (BFalse, BTrue) -> BTrue
                          (BFalse, BFalse) -> BFalse
                          (Num n1, Num n2) -> if n1 <= n2 then BTrue else BFalse
step (Equal e1 e2) | isValue e1 && isValue e2 = case (e1, e2) of
                         (BTrue, BTrue) -> BTrue
                         (BFalse, BFalse) -> BTrue
                         (Num n1, Num n2) -> if n1 == n2 then BTrue else BFalse                         
step (If BFalse e1 e2) = e2 
step (If BTrue e1 e2) = e1 
step (If e e1 e2) = If (step e) e1 e2

step (Head e1 e2 e3) | isValue e1 = case e1 of
                    (Num _) -> e1
                    _ -> e1

step (Tail e1 e2 e3) | isValue e1 && isValue e2 && isValue e3 = case (e1, e2, e3) of
  (Num n1, Num n2, Num n3) -> TailPrint (Num n2, Num n3)
  _ -> TailPrint (e2, e3)
--step (TailPrint (e2 ,e3)) = TailPrint  (e2, e3)
step (Paren e) = e
step (App (Lam x t b) e2) | isValue e2 = subst x e2 b 
                        | otherwise = (App (Lam x t b) (step e2))
step (App e1 e2) = App (step e1) e2
step (Let v e1 e2) | isValue e1 = subst v e1 e2 
                   | otherwise = Let v (step e1) e2
step e = error (show e)

eval :: Expr -> Expr 
eval e | isValue e = e 
       | otherwise = eval (step e)