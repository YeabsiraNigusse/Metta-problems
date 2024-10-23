(Mercury 0.2408467)
(Venus 0.61519726)
(Earth 31557600)
(Mars 1.8808158)
(Jupiter 11.862615)
(Saturn 29.447498)
(Uranus 84.016846)
(Neptune 164.79132)

(: ageOn (-> Planet Number Number)) ;
(: ageonEarth (-> Number Number)) ;
(: checkEarth (-> Planet Bool)) ; 

(= (ageOn $planet $age)
    (if (checkEarth $planet)
        (Age on Earth is $age)
        (match &self
            ($planet $planetAge)
            (Age on Earth is (* (ageonEarth $planetAge) $age))
        )
    )
)

(= (ageonEarth $planetAge)
    (* (match &self (Earth $age) $age) $planetAge))

(= (checkEarth $x)
    (if (== $x Earth)
    True
    False
    )
)
