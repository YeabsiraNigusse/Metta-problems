(: Planet Type)
(: Mercury Planet)
(: Venus Planet)
(: Earth Planet)
(: Mars Planet)
(: Jupiter Planet)
(: Saturn Planet)
(: Uranus Planet)
(: Neptune Planet)

(= (orbital-period Mercury) 0.2408467)
(= (orbital-period Venus) 0.61519726)
(= (orbital-period Earth) 1.0)
(= (orbital-period Mars) 1.8808158)
(= (orbital-period Jupiter) 11.862615)
(= (orbital-period Saturn) 29.447498)
(= (orbital-period Uranus) 84.016846)
(= (orbital-period Neptune) 164.79132)

(: ageOn (-> Planet Number Number))
(= (earth-years $seconds) (/ $seconds 31557600)) ;considering that one earth year is 365.25 days / leap year

(= (ageOn $planet $seconds)
    (/ (earth-years $seconds) (orbital-period $planet))
)

; demonstration example
! (ageOn Venus 3557489)