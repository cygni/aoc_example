(ns day13.core
  (:gen-class))

(defn solution-part1 [] "1337")

(defn solution-part2 [] "42")

(defn -main
  "AOC example solution"
  [& args]
  (let [part (or (System/getenv "part") "part1")]
    (println (condp = part
               "part1" (solution-part1)
               "part2" (solution-part2)
               (str "Unknown part " part)))))
