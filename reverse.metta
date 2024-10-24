(= (reverseList $lst $rev)
    (if (== $lst ())
        $rev
        (reverseList (cdr-atom $lst)(cons-atom (car-atom $lst) $rev))
    )
)

(= (reverse $lst) 
   (reverseList $lst ())
)
!(reverse (l e v e l)) 
!(reverse (c b a))
!(reverse (1 2 3))
