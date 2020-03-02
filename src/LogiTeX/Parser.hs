module Parser where

import Lexer

data AST
  = Node Token [AST]
  | Text Token

tokenPrecedence :: Token -> Int
tokenPrecedence (Token sectionType _)
  = precedence sectionType

precedence :: SectionType -> Int
precedence Question       = 3
precedence SubQuestion    = 2
precedence SubSubQuestion = 1
precedence _              = 0

parse :: [Token] -> AST
parse (token : remaining)
  = undefined
