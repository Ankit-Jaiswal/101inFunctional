(defun same (x) x)
(same 23) ; returns 23
(funcall #'same 23) ; returns 23

(defun add1 (x) (+ x 1))
(add1 23) ; returns 24
(funcall #'add1 23); returns 24

(lambda (x y) (+ (+ x y) 1)) ; anonymous function taking x and y and returning x+y+1
((lambda (x y) (+ (+ x y) 1)) 2 3) ; returns 6
(funcall (lambda (x y) (+ (+ x y) 1)) 2 3) ; returns 6

(set 'foo (lambda (x y) (+ (+ x y) 1))) ; assigns the value of foo to this lambda exp
(funcall foo 2 3) ; returns 6

(funcall (same foo) 2 3) ; returns 6
(funcall (same #'same) 'bar) ; returns BAR

;; (funcall foo 3) -- no internal currying
(lambda (x) (lambda (y) (+ x y))) ; anonymous addition function
(funcall (funcall (lambda (x) (lambda (y) (+ x y))) 2) 3) ; here x is substituted with 2 and y is substitued with 3, returns 5
(funcall (lambda (x) (lambda (y) (+ x y))) 1) ; equivalent to add1

(eq #'same #'same) ; returns T
(eq foo foo) ; returns T
(eq (lambda (x) x) (lambda (x) x)) ; returns Nil --No semantic equality
(eq #'add1 (funcall (lambda (x) (lambda (y) (+ x y))) 1)) ; returns Nil --Because no semantic equality