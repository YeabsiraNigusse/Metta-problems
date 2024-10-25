; Define planetary orbital periods as floating-point numbers
(: MercuryPeriod 0.2408467)
(: VenusPeriod 0.61519726)
(: EarthPeriod 1.0)
(: MarsPeriod 1.8808158)
(: JupiterPeriod 11.862615)
(: SaturnPeriod 29.447498)
(: UranusPeriod 84.016846)
(: NeptunePeriod 164.79132)

; Define total seconds in one Earth year as a floating-point number
(: EarthSeconds 31557600.0)

; Define Planet type with valid options
(: PlanetType (| Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune))

; Function to get the orbital period of a planet
(: getPeriod (-> PlanetType Number))
(= (getPeriod Mercury) 0.2408467)
(= (getPeriod Venus) 0.61519726)
(= (getPeriod Earth) 1.0)
(= (getPeriod Mars) 1.8808158)
(= (getPeriod Jupiter) 11.862615)
(= (getPeriod Saturn) 29.447498)
(= (getPeriod Uranus) 84.016846)
(= (getPeriod Neptune) 164.79132)

; Helper function to retrieve the value of EarthSeconds
(: getEarthSeconds (-> Number))
(= (getEarthSeconds) 31557600.0)

; Function to calculate age on a given planet
(: ageOn (-> PlanetType Number Number))
(= (ageOn $planet $seconds)
   ; Use 'getEarthSeconds' to retrieve the numeric value
   (let $earthSeconds (getEarthSeconds)
     (/ (/ $seconds $earthSeconds) (getPeriod $planet))
   )
)

! (ageOn Earth 1000000000.0)   ; 31.69
! (ageOn Mercury 1000000000.0) ; 131.57
! (ageOn Neptune 1000000000.0) ; 0.19
