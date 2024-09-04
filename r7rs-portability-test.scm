(import (scheme base)
        (scheme write))

(define-syntax assert
      (syntax-rules ()
        ((_ check value-a value-b)
         (let ((result (apply check (list value-a value-b))))
           (if (not result) (display "FAIL: ") (display "PASS: "))
           (write (list 'check 'value-a 'value-b))
           (newline)))))

(include "srfi-1-reference.scm")

(assert equal? (delete 2 (list 1 2 3)) (list 1 3))
