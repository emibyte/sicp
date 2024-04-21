#lang sicp

;; Linearly recursive process
;; since expansion and contraction
;; of the deferred inc calls
;; (define (+ a b)
;;   (if (= a 0) b (inc (+ (dec a) b))))
;;
;; (+ 4 5)
;; (inc (+ (dec 4) 5))
;; (inc (+ 3 5))
;; (inc (inc (+ 2 5)))
;; (inc (inc (inc (+ 1 5))))
;; (inc (inc (inc (inc (+ 0 5)))))
;; (inc (inc (inc (inc 5))))
;; (inc (inc (inc 6)))
;; (inc (inc 7))
;; (inc 8)
;; 9

;; Linearly iterative process
;; since no expansion but n steps
;; (define (+ a b)
;;   (if (= a 0) b (+ (dec a) (inc b))))
;;
;; (+ 4 5)
;; (+ 3 6)
;; (+ 2 7)
;; (+ 1 8)
;; (+ 0 9)
;; 9

;; The difference between the two procedures is that the first
;; calls itself as an argument of inc (it is nested in another expression)
;; while the second one calls itself aswell, but as the top expression (it isn't
;; a subexpression of some bigger expression)
