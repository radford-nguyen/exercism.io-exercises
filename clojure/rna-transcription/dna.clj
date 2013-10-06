(ns dna)

(defn- transform-base [c]
  (if (= \T c) \U c))

(defn to-rna [s]
  (apply str (map transform-base s)))

