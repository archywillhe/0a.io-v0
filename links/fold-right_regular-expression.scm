(define make-empty
  (lambda ()
    (list 'empty)))

(define make-atom
  (lambda (a)
    (list 'atom a)))

(define make-any
  (lambda ()
    (list 'any)))

(define make-seq
  (lambda (re1 re2)
    (list 'seq re1 re2)))

(define make-disj
  (lambda (re1 re2)
    (list 'disj re1 re2)))

(define make-star
  (lambda (re)
    (list 'star re)))

(define make-plus
  (lambda (re)
    (list 'plus re)))

(define make-var
  (lambda (name)
    (list 'var name)))

(define proper-list-of-given-length?
  (lambda (v n)
    (or (and (null? v)
             (= n 0))
        (and (pair? v)
             (> n 0)
             (proper-list-of-given-length? (cdr v)
                                           (1- n))))))

(define is-empty?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'empty)
         (proper-list-of-given-length? (cdr v) 0))))

(define is-atom?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'atom)
         (proper-list-of-given-length? (cdr v) 1))))

(define is-any?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'any)
         (proper-list-of-given-length? (cdr v) 0))))

(define is-seq?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'seq)
         (proper-list-of-given-length? (cdr v) 2))))

(define is-disj?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'disj)
         (proper-list-of-given-length? (cdr v) 2))))

(define is-star?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'star)
         (proper-list-of-given-length? (cdr v) 1))))

(define is-plus?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'plus)
         (proper-list-of-given-length? (cdr v) 1))))

(define is-var?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'var)
         (proper-list-of-given-length? (cdr v) 1))))

(define atom-1
  (lambda (v)
    (list-ref v 1)))

(define seq-1
  (lambda (v)
    (list-ref v 1)))

(define seq-2
  (lambda (v)
    (list-ref v 2)))

(define disj-1
  (lambda (v)
    (list-ref v 1)))

(define disj-2
  (lambda (v)
    (list-ref v 2)))

(define star-1
  (lambda (v)
    (list-ref v 1)))

(define plus-1
  (lambda (v)
    (list-ref v 1)))

(define var-1
  (lambda (v)
        (list-ref v 1)))

(define fold-right_regular-expression
  (lambda (empty-case atom-case any-case seq-case disj-case star-case plus-case var-case else-case)
    (lambda (v_orig)
      (letrec ([visit (lambda (v)
                        (cond
                          [(is-empty? v)
                           (empty-case)]
                          [(is-atom? v)
                           (atom-case (atom-1 v))]
                          [(is-any? v)
                           (any-case)]
                          [(is-seq? v)
                           (seq-case (visit (seq-1 v))
                                     (visit (seq-2 v)))]
                          [(is-disj? v)
                           (disj-case (visit (disj-1 v))
                                      (visit (disj-2 v)))]
                          [(is-star? v)
                           (star-case (visit (star-1 v)))]
                          [(is-plus? v)
                           (plus-case (visit (plus-1 v)))]
                          [(is-var? v)
                           (var-case (var-1 v))]
                          [else
                           (else-case v)]))])
        (visit v_orig)))))


(define test-well-formed-regular-expression
  (lambda (check)
    (lambda (re)
      (or (check re)
          (begin
            (printf "test-well-formed-regular-expression -- incorrectly rejected: ~s~n"
                    re)
            #f)))))

(define test-well-formed-regular-expressions
  (lambda (check)
    (andmap (test-well-formed-regular-expression check)
            (list ;;; from week-2.html:
             '(atom 10)
             '(any)
             '(seq (any) (any))
             '(seq (atom 10) (any))
             '(seq (any) (atom 20))
             '(seq (seq (atom 1) (atom 2)) (seq (atom 3) (atom 4)))
             '(disj (atom 10) (atom 20))
             '(star (atom 10))
             '(plus (atom 10))
             '(disj (empty) (atom 10))
             '(seq (plus (atom 10)) (seq (star (any)) (plus (atom 20))))
                               ;;; from Exercise 1 in week-2.html:
             '(seq (atom 1) (seq (atom 2) (seq (atom 3) (seq (atom 4) (empty)))))
             '(seq (atom 1) (seq (atom 2) (seq (atom 3) (atom 4))))
             '(seq (seq (empty) (seq (atom 1) (atom 2))) (seq (empty) (seq (atom 3) (atom 4))))
             '(seq (seq (seq (atom 1) (atom 2)) (atom 3)) (atom 4))
             '(seq (seq (seq (seq (empty) (atom 1)) (atom 2)) (atom 3)) (atom 4))
                               ;;; from week-4-regular-expressions.scm:
             '(seq (atom 10) (seq (var x) (atom 30)))
             '(seq (disj (var x) (star (any)))
                   (plus (seq (var z) (var x))))
                               ;;; add more well-formed regular expressions here
             ))))

(define test-ill-formed-regular-expression
  (lambda (check)
    (lambda (re)
      (or (not (check re))
          (begin
            (printf "test-ill-formed-regular-expression -- incorrectly accepted: ~s~n"
                    re)
            #f)))))

(define test-ill-formed-regular-expressions
  (lambda (check)
    (andmap (test-ill-formed-regular-expression check)
            (list '(atom)
                  '(atom . 10)
                  '(atom 10 20)
                  '(anything)
                  '(any thing)
                  '(disj (anything) (any thing))
                  '(seq (seq (seq (seq EMPTY (atom 1)) (atom 2)) (atom 3)) (atom 4))
                                    ;;; add more ill-formed regular expressions here
                  ))))

(define check-silently
  #t)

(define check-regular-expression_alt
  (fold-right_regular-expression (lambda ()
                                   #t)
                                 (lambda (v)
                                   (number? v))
                                 (lambda ()
                                   #t)
                                 (lambda (r1 r2)
                                   (and r1 r2))
                                 (lambda (r1 r2)
                                   (and r1 r2))
                                 (lambda (r)
                                   r)
                                 (lambda (r)
                                   r)
                                 (lambda (v)
                                   (symbol? v))
                                 (lambda (v)
                                   (begin
                                     (or check-silently
                                         (printf "check-regular-expression_alt -- unrecognized input: ~s~n" v))
                                     #f))))

(test-well-formed-regular-expressions check-regular-expression_alt)

(test-ill-formed-regular-expressions check-regular-expression_alt)
