(define make-literal
  (lambda (n)
    (list 'literal n)))

(define make-plus
  (lambda (e1 e2)
    (list 'plus e1 e2)))

(define make-times
  (lambda (e1 e2)
    (list 'times e1 e2)))

(define is-literal?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'literal)
         (proper-list-of-given-length? (cdr v) 1))))

(define is-plus?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'plus)
         (proper-list-of-given-length? (cdr v) 2))))

(define is-times?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'times)
         (proper-list-of-given-length? (cdr v) 2))))

(define literal-1
  (lambda (v)
    (list-ref v 1)))

(define plus-1
  (lambda (v)
    (list-ref v 1)))

(define plus-2
  (lambda (v)
    (list-ref v 2)))

(define times-1
  (lambda (v)
    (list-ref v 1)))

(define times-2
  (lambda (v)
    (list-ref v 2)))

