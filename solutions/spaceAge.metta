;Planet type and planets
(: Planet type)
(: Mercury Planet)
(: Venus Planet)
(: Earth Planet)
(: Mars Planet)
(: Jupiter Planet)
(: Saturn Planet)
(: Uranus Planet)
(: Neptune Planet)

; Orbital periods relative to Earth years
(: orbitalPeriod (-> Planet Number))

(= (orbitalPeriod Mercury) 0.2408467)
(= (orbitalPeriod Venus) 0.61519726)
(= (orbitalPeriod Earth) 1.0)
(= (orbitalPeriod Mars) 1.8808158)
(= (orbitalPeriod Jupiter) 11.862615)
(= (orbitalPeriod Saturn) 29.447498)
(= (orbitalPeriod Uranus) 84.016846)
(= (orbitalPeriod Neptune) 164.79132)

; the number of seconds in one Earth year
(: earthYearInSeconds Number)
(= (earthYearInSeconds) 31557600)

; the ageOn function to calculate age in years on a given planet
; Takes a planet and a number of seconds, returns the age in years

(: ageOn (-> Planet Number Number))
(= (ageOn $planet $seconds)
   (let* (
           ($earth-years (/ $seconds (earthYearInSeconds)))  
           ($planet-years (/ $earth-years (orbitalPeriod $planet)))  
         )
         $planet-years  ; Return the calculated age on the planet
   )
)

; Test cases
! (ageOn Earth 1000000000)   ; output: 31.69
! (ageOn Mercury 1000000000) ; output:131.57
! (ageOn Venus 1000000000)   ; output: 51.51
! (ageOn Mars 1000000000)    ; output: 16.85  
! (ageOn Jupiter 1000000000) ; output: 2.67 
! (ageOn Saturn 1000000000)  ; output: 1.08 
! (ageOn Uranus 1000000000)  ; output: 0.38 
! (ageOn Neptune 1000000000) ; output: 0.19 
