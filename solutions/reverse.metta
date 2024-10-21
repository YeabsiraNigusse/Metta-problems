; Helper function to append an element to the end of a list
(= (append-to-end $list $elem)
   (if (== $list ()) 
       (cons-atom $elem ())
       (let* (
               ($head (car-atom $list))  
               ($tail (cdr-atom $list))  
               ($appended-tail (append-to-end $tail $elem))
             )
           (cons-atom $head $appended-tail)  ; Recursively append $elem to the end of the tail
       )
   )
)

;function to reverse an expression using car-atom and cdr-atom
(= (reverseExpr $expr)
   (if (== $expr ())
       ()
       (let* (
               ($head (car-atom $expr))  
               ($tail (cdr-atom $expr))  
               ($reversed-tail (reverseExpr $tail))  ; Recursively reverse the tail
               ($result (append-to-end $reversed-tail $head))
           )
           $result  ; Append the head to the end of the reversed tail
       )
   )
)



; Test cases for reverseExpr
! (reverseExpr (1 2 3))  ;output: (3 2 1)
! (reverseExpr (a b c d))  ;output: (d c b a)
! (reverseExpr (1 2 3 4 5 6 7)) ; output (7 6 5 4 3 2 1)
! (reverseExpr (H y p e r o n)) ;ouput (n o r e p y H)
