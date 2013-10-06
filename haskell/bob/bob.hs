module Bob (responseFor) where
import Data.Char

silence :: String -> Bool
silence "" = True
silence s = all isSpace s

shout :: String -> Bool
shout s = (any isUpper s) && (not $ any isLower s)

question :: String -> Bool
question s = (last s) == '?'

responseFor s
  | silence s  = "Fine. Be that way!"
  | shout s    = "Woah, chill out!"
  | question s = "Sure."
  | otherwise  = "Whatever."

