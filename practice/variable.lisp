(defvar *number* 34)

(setf *number* 6)
(set 'a 5) ; sets the value of a to 5
(let (a) (setq a 5)) ; sets the value of a to 5
(let (a) (setf a 4)) ; sets the value of a to 4

(format t "my varibale is ~a. ~%" *number*)

(let ((a 12) (b 2)) (* a b))
