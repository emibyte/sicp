#lang sicp

;; the if-expression evaluates to the appropriate primitive operator
;; so that b is guaranteed to be positive
;; the operator in the expression below
;; is the composite expression (if (> b 0) + -)
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
