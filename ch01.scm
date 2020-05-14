(define (dig x) (if (> x 2) 5 0))

(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (mean-square x y) (average (square x) (square y)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x))
     0.001))

(define (try guess x)
  (if (good-enough? guess x)
      guess
      (try (improve guess x) x)))

(define (sqrt x) (try 1 x))


