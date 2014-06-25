; Exercise 1.3
;; Define a procedure that takes three numbers as arguments
;;  and returns the sum of the squares of the two larger numbers. 

(define (square a)
  (* a a))

(define (sum-of-squares a b)
  (+ (square a) (square b))

(define (square-sum-larger a b c)
  (cond 
    ((and (< a b) (< a c)) (sum-of-squares b c))
    ((and (< b a) (< b c)) (sum-of-squares a c))
    ((and (< c a) (< c b)) (sum-of-squares a b))
  ))

; Exercise 1.4
;; 1, 2, 5

; Exercise 1.5
;; 2, 5

; Exercise 1.6
;; 3

; Exercise 1.7

(define (avg a b)
  (/ (+ a b) 2))

(define (improve guess x))

(define (my-sqrt x)
  (let guess (/ x 2))
  (if (accurate? guess x) guess)
    (my-sqrt (improve guess x)))
