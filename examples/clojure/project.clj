(defproject day13 "0.1.0-SNAPSHOT"
  :description "clojure aoc example"
  :dependencies [[org.clojure/clojure "1.11.1"]]
  :main ^:skip-aot day13.core
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all
                       :jvm-opts ["-Dclojure.compiler.direct-linking=true"]}})
