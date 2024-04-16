#lang sicp

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

;; normal order eval:
;; (test 0 (p))
;; (if (= 0 0) 0 p)
;; 0
;;
;; applicative order eval:
;; (test 0 (p))
;; (test 0 (p))
;; (test 0 (p))
;; ....
;;
;; p is a function that invokes itself
;; which leads to an infinite loop when the interpreter tries to evaluate it
;; but since test was called with the first argument 0
;; the value of (p) is not needed and so never gets evaluated in normal order eval
;; meanwhile in applicative order evaluation:
;; the interpreter will try to evaluate p but since p evaluates to itself
;; the interpreter will over and over again call p in an infinite loop
