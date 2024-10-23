(= (builder () $xs) $xs)
(= (builder $x $xs)
    (let* (($first_element (car-atom $x))
            ($last_element (cdr-atom $x)))
    (builder $last_element (cons-atom $first_element $xs))
    )
)

(= (reverse $x)
   (builder $x ())
)

;example demonstration
! (reverse (1 2 3 4 5))
! (reverse (kidus is cool))