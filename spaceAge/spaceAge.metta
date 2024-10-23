; Declare type for Planets and functions
(: Planet Type)
(: Mercury Planet)
(: Venus Planet)
(: Earth Planet)
(: Mars Planet)
(: Jupiter Planet)
(: Saturn Planet)
(: Uranus Planet)
(: Neptune Planet)

(: ageOn (-> Planet Number Number)) ; take a Planet atom and a Number as an argument
(: convertToEarth (-> Number Number)) ; takes the ratio of a plaets age to earth and returns age with respect to earth
(: checkEarth (-> Planet Bool)) ; checks if the planet is Earth

(Mercury 0.2408467) 
(Venus 0.61519726)
(Earth 31557600)
(Mars 1.880815)
(Jupiter 11.862615)
(Saturn 29.447498)
(Uranus 84.016846)
(Neptune 164.79132)

(= (ageOn $planet $age)
        (if (checkEarth $planet)
            (Age in Earth is seconds old $age)
            (match &self 
                ($planet $planetAge) 
                (Age in Earth is seconds old (* (convertToEarth $planetAge) $age))
            )
        )
)

(= (convertToEarth $planetAge) 
    (* (match &self (Earth $age) $age) $planetAge))


(= (checkEarth $x) 
    (if (== $x Earth)
        True
        False
    )
)

!(assertEqual (ageOn Earth 1) (Age in Earth is seconds old 1))
!(assertEqual (ageOn Mercury 1) (Age in Earth is seconds old 7600543.81992))
!(assertEqual (ageOn Mercury 100) (Age in Earth is seconds old 760054381.992))
