;;; package --- Summary
;;; Commentary:
;;; Code:

(defun read-lines (file)
  "Read the contents of FILE into a string."
  (with-temp-buffer
    (insert-file-contents file)
    (split-string (buffer-string) "\n" t))) ; Trim and Split the file

(defvar aoc-input
  (mapcar 'string-to-number (read-lines "input.txt")))

(defun solve1 (input)
  "Solve part 1 by calculating the sum of the numbers in INPUT."
  (apply '+ input))

(defun solve2 (input)
  "Solve part 2 by calculating the product of the numbers in INPUT."
  (apply '* input))

(message "Elisp")

(defvar aoc-part (getenv "part"))
(message
 (cond ((string= aoc-part "part1") (number-to-string (solve1 aoc-input)))
       ((string= aoc-part "part2") (number-to-string (solve2 aoc-input)))
       ((eql aoc-part nil)     (number-to-string (solve1 aoc-input)))
       (t "Unknown part")))

(provide 'aoc)
;;; aoc.el ends here
