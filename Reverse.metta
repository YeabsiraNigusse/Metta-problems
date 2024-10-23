(= (decons-atom $exp)
    ((car-atom $exp) (cdr-atom $tail))
)

(=(push-back $atom ()) ($atom))
(=(push-back $atom $list) (
    let* (
        (($head $tail) (decons-atom $list))
        ($dummy (push-back $atom $tail))
    )
     (cons-atom $head $dummy)
))
(=(reverse-list ()) ())
(=(reverse-list $subparts)(
      let ($head $tail) (decons-atom $subparts) (push-back $head (reverse-list $tail))
))

!(reverse-list (D E S E R T S))
!(reverse-list (S P O R T S))
!(reverse-list (R A C E C A R))
