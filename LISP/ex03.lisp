(defvar *l1* '(1 2 3))
(defvar *l2* '(4 5 6))

(defun mergelists (l1 l2)
    (cond ((null l1) l2)
          ((null l2) l1)
          ((append
            (list (car l1) (car l2))
            (mergelists (cdr l1) (cdr l2))))))

(print (mergelists *l1* *l2*))