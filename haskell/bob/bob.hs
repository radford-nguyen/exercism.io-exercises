module Bob (responseFor) where
import Data.Char

responseFor :: String -> String
responseFor s
  | silence s  = "Fine. Be that way!"
  | shout s    = "Woah, chill out!"
  | question s = "Sure."
  | otherwise  = "Whatever."
  where
    silence s  = all isSpace s
    shout s    = any isUpper s && (not $ any isLower s)
    question s = last s == '?'

