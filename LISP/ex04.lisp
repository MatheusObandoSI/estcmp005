(defvar *l1* '(1 2 5 3))
(defvar *l2* '(4 2 5 6))

;;Lisp standard library union function
;;(print (union *l1* *l2*))

(defun unionlists (l1 l2)
    (cond ((null l1) l2)
          ((unionlists (cdr l1)
          (adjoin (car l1) l2)))))

(print (unionlists *l1* *l2*))