module TypeChecker where 

import Lexer 
import Parser
import Interpreter

type Ctx = [(String,Ty)]
type Ctx2 = [(Int,Ty)]

typeof :: Ctx -> Expr -> Maybe Ty 
typeof ctx BTrue = Just TBool 
typeof ctx BFalse = Just TBool 
typeof ctx (Num _) = Just TNum
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TNum, Just TNum) -> Just TNum 
                       _                      -> Nothing
typeof ctx (Sub e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TNum, Just TNum) -> Just TNum 
                       _                      -> Nothing
typeof ctx (Mul e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TNum, Just TNum) -> Just TNum 
                       _                      -> Nothing
typeof ctx (Div e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TNum, Just TNum) -> Just TNum 
                       _                      -> Nothing
typeof ctx (And e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TBool, Just TBool) -> Just TBool 
                       _                        -> Nothing
typeof ctx (Or e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TBool, Just TBool) -> Just TBool 
                       _                        -> Nothing
typeof ctx (Not e1) = case (typeof ctx e1) of 
                       (Just TBool) -> Just TBool 
                       _            -> Nothing
typeof ctx (GreaterThan e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just t1, Just t2) -> if t1 == t2 then
                                                  Just TBool
                                                else 
                                                  Nothing
                          _                  -> Nothing
typeof ctx (GreaterOrEqual e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just t1, Just t2) -> if t1 == t2 then
                                                  Just TBool
                                                else 
                                                  Nothing
                          _                  -> Nothing
typeof ctx (LessThan e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just t1, Just t2) -> if t1 == t2 then
                                                  Just TBool
                                                else 
                                                  Nothing
                          _                  -> Nothing
typeof ctx (LessOrEqual e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just t1, Just t2) -> if t1 == t2 then
                                                  Just TBool
                                                else 
                                                  Nothing
                          _                  -> Nothing
typeof ctx (Equal e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just t1, Just t2) -> if t1 == t2 then
                                                  Just TBool
                                                else 
                                                  Nothing
                          _                  -> Nothing
typeof ctx (If e1 e2 e3) = case typeof ctx e1 of 
                         Just TBool -> case (typeof ctx e2, typeof ctx e3) of
                                         (Just t1, Just t2)       -> if (t1 == t2) then
                                                                       Just t1 
                                                                     else 
                                                                       Nothing
                                         _                        -> Nothing
                         _          -> Nothing                   
typeof ctx (List e) = case checkListElements ctx e of
                          Just elementType -> Just (TList elementType)
                          _                -> Nothing
typeof ctx (Head e) = case typeof ctx e of
                      Just (TList t) -> Just t
                      _              -> Nothing

typeof ctx (Tail e) = case typeof ctx e of
                      Just (TList t) -> Just (TList t)
                      _              -> Nothing
typeof ctx (Paren e) = typeof ctx e
typeof ctx (Var x) = lookup x ctx 
typeof ctx (Lam v t1 b) = let ctx' = (v, t1):ctx 
                            in case typeof ctx' b of 
                                 Just t2 -> Just (TFun t1 t2)
                                 _       -> Nothing
typeof ctx (App e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just (TFun t11 t12), Just t2) -> if (t11 == t2) then 
                                                               Just t12
                                                             else 
                                                               Nothing 
                           _  -> Nothing
typeof ctx (Let v e1 e2) = case typeof ctx e1 of 
                             Just t1 -> typeof ((v, t1):ctx) e2 
                             _       -> Nothing 

typecheck :: Expr -> Expr 
typecheck e = case typeof [] e of 
                Just _ -> e 
                _      -> error "Type error!"

checkListElements :: Ctx -> [Expr] -> Maybe Ty
checkListElements ctx (e:es) = case typeof ctx e of
                              Just t -> if all ((== Just t) . typeof ctx) es
                                        then Just t
                                        else Nothing
                              _      -> Nothing