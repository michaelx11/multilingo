import System.IO

-- For now, only takes one line

-- Curried function, predicate (Char -> Bool) on String results in List of Strings
splitBy :: (Char -> Bool) -> String -> [String]
-- p is predicate, s is string
-- dropWhile is the remains of taking while (takeWhile) p is satisfied
splitBy p s =  case dropWhile p s of
                      -- Empty string, return empty List
                      "" -> []
                      -- String? then do
                      -- concatenate w and result of (splitBy p s'')
                      -- where w is the longest prefix that continuously fails p
                      -- and s'' is the remainder
                      s' -> w : splitBy p s''
                            where (w, s'') = break p s'

main = do
  name <- getLine
  -- Dollar sign is syntactic sugar for avoiding parenthesis
  -- in this case, equivalent to (splitBy (==' ') name)
  print $ splitBy (==' ') name
