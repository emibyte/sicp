#lang sicp

(define (cube-root x)
  (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 0.0001))

(define (improve guess x)
  (/
   (+
    (quadratic-quotient x guess)
    (* 2 guess))
   3))

(define (quadratic-quotient x y)
  (/ x (* y y)))

;; should roughly return the radicant as a value
;; used for testing in repl
(define (test radicant)
  (* (cube-root radicant) (cube-root radicant) (cube-root radicant)))
