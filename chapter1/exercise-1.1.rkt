#lang sicp

10                  ;; 10
(+ 5 3 4)           ;; 12
(- 9 1)             ;; 8
(/ 6 2)             ;; 3
(+ (* 2 4) (- 4 6)) ;; 6
(define a 3)        ;; not defined, depends on implementation
(define b (+ a 1))  ;; not defined, depends on implementation
(+ a b (* a b))     ;; 19
(= a b)             ;; #f (or false)

(if (and (> a b) (< b (* a b)))     ;; 3
    b
    a)

(cond ((= a 4) 6)                  ;; 16
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))             ;; 6

(* (cond ((> a b) a)               ;; 16
         ((< a b) b)
         (else -1))
   (+ a 1))
