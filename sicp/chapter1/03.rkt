#lang racket

(#%require rackunit)

(define (square y) (* y y))

(define (sum-of-two-max a b c)
  (define min-arg (min a b c))
    (define (f x acc)
      (if (> x min-arg) (+ acc (square x)) acc))
    (foldl f 0 (list a b c)))

(check-equal? (sum-of-two-max 8 3 4) 80)