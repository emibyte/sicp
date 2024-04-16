#lang sicp

;; using new-if causes an infinite loop when calling sqrt-iter
;; since new-if is a simple procedure and not a special format
;; both paths, the consequent and the alternative, are evaluated
;; on every call of sqrt-iter (even if the guess is good enough)
;; this is not the case for the special form if since it only evaluates
;; the necessary path
;; that means when good-enough? guess x is true it evalutes guess
;; and doesnt also evaluate sqrt-iter (which is what happens with new-if)
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5) ;; 5
(new-if (= 1 1) 0 5) ;; 0

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average (/ x guess) guess))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))
