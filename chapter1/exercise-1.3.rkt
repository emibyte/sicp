#lang sicp

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-squares-of-two-biggest x y z)
  (cond ((and (> x y) (> y z)) (sum-of-squares x y))
        ((and (> y x) (> z x)) (sum-of-squares y z))
        (else (sum-of-squares x z))))

;; tests
(= (sum-of-squares-of-two-biggest 1 2 3) (sum-of-squares 2 3))
(= (sum-of-squares-of-two-biggest 5 1 3) (sum-of-squares 3 5))
(= (sum-of-squares-of-two-biggest 102 99 -5) (sum-of-squares 102 99))
