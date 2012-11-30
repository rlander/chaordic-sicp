
;; exercise 1.40

(define (double fn)
  (lambda (x) (fn (fn x))))


