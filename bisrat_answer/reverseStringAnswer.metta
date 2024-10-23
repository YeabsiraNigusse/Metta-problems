; If the list is empty, return the accumulated reversed list  
(= (reverseAcc () $reversed) $reversed)

; else
(= (reverseAcc $list $reversed)
       (let* (($first-item (car-atom $list))   ; Extract the first element (head)
              ($remaining-items (cdr-atom $list)))  ; Get the rest of the list (tail)
             
       (reverseAcc $remaining-items (cons-atom $first-item $reversed))
       )
)

; helper function
(= (reverseList $list)
   ; Start the reversal process with an empty list as the accumulator
   (reverseAcc $list ())
)

; Example call:
! (reverseList (h e l l o))
! (reverseList(b i s r a t ))