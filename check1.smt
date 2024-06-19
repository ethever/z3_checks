; Declare the boolean variables used in the expressions
(declare-const A Bool)
(declare-const B Bool)
(declare-const C Bool)

; Define the two expressions
(define-fun Cout1 () Bool (not (and (not (and B C)) (not (and (not (not (or B C))) A)))))
(define-fun Cout2 () Bool (or (or (and A B) (and B C)) (and A C)))
; Check equivalence
(assert (not (= Cout2 Cout1)))
; If the expressions are equivalent, the assertion will be unsatisfiable
(check-sat)