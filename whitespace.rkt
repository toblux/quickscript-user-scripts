#lang racket/base

(require quickscript
         racket/string)

;; Removes trailing whitespace from the selected region
(define-script remove-trailing-whitespace
  #:label "Remove trailing whitespace"
  (λ (selection)
    (let ([linebreak (string #\newline)])
      (string-join
       (map (λ (line)
              (string-trim line #px"\\s+" #:left? #f))
            (string-split selection linebreak))
       linebreak))))
