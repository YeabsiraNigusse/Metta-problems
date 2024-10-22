(= (reverse-acc $expr $acc)
   (if (== $expr ())
       $acc
       (let* (($head (car-atom $expr))
              ($tail (cdr-atom $expr)))
         (reverse-acc $tail (cons-atom $head $acc))
       )
   )
)

(= (reverse $expr)
   (reverse-acc $expr ())
)

! (reverse (h e l l o))
