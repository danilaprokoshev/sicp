#lang racket

(#%require rackunit)

(define (square y) (* y y))

(define (sum-of-two-max a b c)
  (if (< a b)
      (if (< a c)
          (+ (square b) (square c))
          (+ (square a) (square b)))
      (if (< b c)
               (+ (square a) (square c))
               (+ (square a) (square b)))))

(check-equal? (sum-of-two-max 8 3 4) 80)
(check-equal? (sum-of-two-max 1 2 3) 13)
(check-equal? (sum-of-two-max 4 2 3) 25)
(check-equal? (sum-of-two-max 0 0 0) 0)
(check-equal? (sum-of-two-max 1 0 1) 2)
(check-equal? (sum-of-two-max 2 3 2) 13)