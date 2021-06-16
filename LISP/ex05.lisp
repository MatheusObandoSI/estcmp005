(defvar *l1* '(1 2 5 3))
(defvar *l2* '(4 2 5 6))

;;Lisp standard library intersection function
;;(print (intersection *l1* *l2*))

(defun intersectionlist (l1 l2)
    (cond 
        ((or (null l1) (null l2)) nil)
        ((find (car l1) l2) (cons (car l1) (intersectionlist (cdr l1) l2)))
        (t (intersectionlist (cdr l1) l2))))
(print (intersectionlist *l1* *l2*))