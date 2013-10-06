module Bob (responseFor) where
import Data.Char

responseFor :: String -> String
responseFor s
  | silence   = "Fine. Be that way!"
  | shout     = "Woah, chill out!"
  | question  = "Sure."
  | otherwise = "Whatever."
  where
    silence   = all isSpace s
    shout     = any isUpper s && (not $ any isLower s)
    question  = last s == '?'

