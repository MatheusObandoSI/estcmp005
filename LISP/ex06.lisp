(defun my-sequence(n a)
    (loop for i from 0 to (- n 1) collect (+ a i)))
    
(print (my-sequence 5 1))