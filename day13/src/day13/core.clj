(ns day13.core
  (:require [clojure.java.io :as io])
  (:gen-class))

  (defn read-lines []
    (with-open [rdr (io/reader "input.txt")]
      (reduce conj [] (line-seq rdr))))
  
(defn parse-input [lines]
  (mapv #(Integer/parseInt %) lines))

(defn solution-part1 [input] (str (first input)))

(defn solution-part2 [input] (str (nth input 1)))

(defn -main
  "AOC example solution"
  [& args]
  (let [part (or (System/getenv "part") "part1")
        input (parse-input (read-lines))]
    (do (println "Clojure")
        (println (condp = part
                   "part1" (solution-part1 input)
                   "part2" (solution-part2 input)
                   (str "Unknown part " part))))))
