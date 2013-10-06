(ns bob)

(defn- is-a-question? [s]
  (= \? (last (seq s))))

(defn- is-silence? [s]
  (every? #(= \space %) (seq s)))

(defn- is-a-shout? [s]
  (and
    (     some #(Character/isUpperCase %) (seq s)))
    (not (some #(Character/isLowerCase %) (seq s))))

(defn response-for [s]
  (cond
    (is-silence? s)    "Fine. Be that way!"
    (is-a-shout? s)    "Woah, chill out!"
    (is-a-question? s) "Sure."
    :else              "Whatever."))

