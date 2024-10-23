(= (reverseList $input $output)
   (if (== $input ()) 
       $output  
       (reverseList (cdr-atom $input) (cons-atom (car-atom $input) $output))  
   )
)

(= (reverse $input) 
   (reverseList $input ())
)

!(reverse (1 2 3)) 
!(reverse (a b c))
