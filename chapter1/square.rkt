#lang sicp

;; 1.1.5
(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

;; (f 5)
;; ((sum-of-squares (+ a 1) (* a 2)) 5)
;; (sum-of-squares (+ 5 1) (* 5 2))
;; (sum-of-squares 6 10)
;; (+ (square 6) (square 10))
;; (+ (* 6 6) (* 10 10))
;; (+ 36 100)
;; 136

;; evaluating the same in an imagined different evaluation strategy
;; where we first reduce the expression to only contain primitive operators
;; and then, when the values are needed, do we evaluate them
;; (f 5)
;; (sum-of-squares (+ 5 1) (* 5 2))
;; (+ (square (+ 5 1)) (square (* 5 2)))
;; (+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))
;; only now do we reduce
;; (+ (* 6 6) (* 10 10))
;; (+ 36 100)
;; 136
