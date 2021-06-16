(format t "Fibonnaci: ")
(defvar *input* (read))

(defun fibonnaci(input)
(cond
((= input 1) 0)
((= input 2) 1) 
((+ (fibonnaci (- input 1)) (fibonnaci (- input 2))))))

(format t "~D~%" (fibonnaci *input*))