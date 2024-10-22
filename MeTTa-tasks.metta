(= (leap-year $x)
    (if (== (% $x 4) 0)
        (if (== (% $x 100) 0)
            (if (== (% $x 400) 0)
                True
                False
            )
        True
    )
    False
)
)
! (leap-year 1996)
! (leap-year 2000)
! (leap-year 1600)
! (leap-year 200)
! (leap-year 400)
; End of function leap-year

; Planetary age conversion
(: Mercury Planet)
(: Venus Planet)
(: Earth Planet)
(: Mars Planet)
(: Jupiter Planet)
(: Saturn Planet)
(: Uranus Planet)
(: Neptune Planet)

(: EarthYears (-> (Planet Number) Number))

(Mercury 0.2408467)
(Venus 0.61519726)
(Earth 1)
(Mars 1.8808158)
(Jupiter 11.862615)
(Saturn 29.447498)
(Uranus 84.016846)
(Neptune 164.79132)

(= (EarthYears ($planet $seconds))
    (match &self ($planet $x) (println! (Person is(* (/ $seconds 31557600) $x) Earth years old)))
    )
! (EarthYears (Earth 1000000000))
! (EarthYears (Mars 1000000000))
; end of function EarthYears

; Reversing contents of an expression
(= (reverse $expression)
    (collapse (let $superposed (superpose $expression) $superposed))
)
! (reverse ()) ; [()]
! (reverse (A)); [(A)]
! (reverse (A B)); [(B A)]
! (reverse (a b c)); [(c b a)]
! (reverse (0 1st 2nd 3rd 4th 5th)); [(c b a)]
