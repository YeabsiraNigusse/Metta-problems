(: reverse-string (-> String String))

(= (reverse-string $str)
   (reverse-string-iter $str "")
)

(: reverse-string-iter (-> String String String))

(= (reverse-string-iter "" $reversed)
   $reversed
)

(= (reverse-string-iter $str $reversed)
   (reverse-string-iter
       (drop $str 1)
       (+ (take $str 1) $reversed)
   )
)

! (reverse-string "car")


: throws [(Error (drop "car" 1) BadType), (Error (+ (take "car" 1) "") BadType)] 