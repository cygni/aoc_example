(ns day13.core-test
  (:require [clojure.test :refer :all]
            [day13.core :refer :all]))

(deftest basic-test
  (testing "part1"
    (is (= (day13.core/solution-part1 [17 56]) 73)))
  (testing "part2"
    (is (= (day13.core/solution-part2 [17 56]) 952))))
