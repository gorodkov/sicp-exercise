;; Define a procedure sum-of-squares-of-top-two
;; that takes three numbers as arguments and returns the sum of the squares
;; of the two larger numbers.

;; My own:
(define (sum-of-squares x y) (+ (* x x) (* y y)))

(define (sum-of-squares-of-top-two x y z)
    (if (and (> x z) (> y z))
        (sum-of-squares x y)
            (if (and (> y x) (> z x))
                (sum-of-squares y z)
                    (sum-of-squares x z))))


;; Hexlet:
(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(define (sum-of-squares-of-top-two a b c)
  (cond ((and (< a b) (< a c)) (sum-of-squares b c))
        ((and (< b a) (< b c)) (sum-of-squares a c))
        (else (sum-of-squares a b))))
