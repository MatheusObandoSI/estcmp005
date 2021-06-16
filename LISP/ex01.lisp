(format t "Factorial: ")

(defvar *input* (read))
(defun factorial (input)
(if (= input 0) 1 (* input (factorial(- input 1)))))

(format t "~D~%" (factorial *input*))