#lang sicp

;; linear recursive process
(define (factorial-top-down n)
  (if (= n 1)
      1
      (* n (factorial-top-down (- n 1)))))

;; abusing lexical scoping
;; in block structure
;; linear iterative process since its state is
;; completely captured by n, counter and product
(define (factorial-bottom-up n)
  (define (iter counter product)
    (if (> counter n)
        product
        (iter (+ counter 1)
              (* product counter))))
  (iter 1 1))

;; (define (factorial-iter counter-max counter product)
;;   (if (> counter counter-max)
;;       product
;;       (factorial-iter counter-max
;;                       (+ counter 1)
;;                       (* product counter))))

(= (factorial-top-down 50) (factorial-bottom-up 50))
