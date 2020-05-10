;;; First comment

(print "what's your name? ")

;; global variable
(defvar *name* (read))

;; a form, basically function evaluation
(defun hello-you (n) 
  (format t "Hello, ~a!" n)
)

(hello-you *name*)


(defvar foo 'alpha)

(format t "foo is equal to ~a. ~%" foo)

(print (nth 2 '(a b c d))) ; data is program
(print (nth 1 '(hello-you *name*))) ; program is data