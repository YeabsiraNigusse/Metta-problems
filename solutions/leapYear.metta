(: is-leap-year (-> Number Bool))

(= (is-leap-year $year)
   (if (== (% $year 4) 0)
       (if (== (% $year 100) 0)
           (if (== (% $year 400) 0)
               True
               False
           )
           True
       )
       False
   )
)

! (is-leap-year 1996)

! (is-leap-year 1900)

! (is-leap-year 2024)

! (is-leap-year 2023)

! (is-leap-year 2000)

