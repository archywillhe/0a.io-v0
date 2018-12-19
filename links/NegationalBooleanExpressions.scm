(define proper-list-of-given-length?
  (lambda (v n)
    (or (and (null? v)
             (= n 0))
        (and (pair? v)
             (> n 0)
             (proper-list-of-given-length? (cdr v)
                                           (1- n))))))

(define make-posvar
  (lambda (x)
    (list 'posvar x)))

(define make-negvar
  (lambda (x)
    (list 'negvar x)))

(define make-conj
  (lambda (f1 f2)
    (list 'conj f1 f2)))

(define make-disj
  (lambda (f1 f2)
    (list 'disj f1 f2)))

(define make-is-var?
  (lambda (whatvar)
    (lambda (v)
      (and (pair? v)
           (equal? (car v) whatvar)
           (proper-list-of-given-length? (cdr v) 1)))))

(define is-posvar? (make-is-var? 'posvar))
(define is-negvar? (make-is-var? 'negvar))

(define is-conj?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'conj)
         (proper-list-of-given-length? (cdr v) 2))))

(define is-disj?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'disj)
         (proper-list-of-given-length? (cdr v) 2))))

(define negvar-1
  (lambda (v)
    (list-ref v 1)))

(define posvar-1
  (lambda (v)
    (list-ref v 1)))

(define conj-1
  (lambda (v)
    (list-ref v 1)))

(define conj-2
  (lambda (v)
    (list-ref v 2)))

(define disj-1
  (lambda (v)
    (list-ref v 1)))

(define disj-2
  (lambda (v)
    (list-ref v 2)))
