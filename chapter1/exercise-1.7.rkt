#lang sicp

(define (square x) (* x x))

(define (sqrt-iter guess x)
  (if (good-enough-fraction? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

;; instead evaluates the difference between the previous and next guess
;; if that difference is very small we say the guess is good enough
(define (good-enough-fraction? guess x)
  (< (abs (- (improve guess x) guess)) 0.00001))

(define (sqrt x)
  (sqrt-iter 1.0 x))
