; Declare the boolean variables used in the expressions
(declare-const A Bool)
(declare-const B Bool)

; Define the two expressions
(define-fun F () Bool (or (and A (not B)) (and (not A) B)))
(define-fun Fnot () Bool
 (and 
 (or (not A) B)
  (or A (not B))
 )

)
; Check equivalence
(assert (not (= F (not Fnot))))
; If the expressions are equivalent, the assertion will be unsatisfiable
(check-sat)