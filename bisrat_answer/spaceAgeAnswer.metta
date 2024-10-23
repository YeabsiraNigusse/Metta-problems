; Define the orbital periods for each planet

(= (PlanetOrbitalPeriod Mercury) 0.2408467)
(= (PlanetOrbitalPeriod Venus) 0.61519726)
(= (PlanetOrbitalPeriod Earth) 1.0)
(= (PlanetOrbitalPeriod Mars) 1.8808158)
(= (PlanetOrbitalPeriod Jupiter) 11.862615)
(= (PlanetOrbitalPeriod Saturn) 29.447498)
(= (PlanetOrbitalPeriod Uranus) 84.016846)
(= (PlanetOrbitalPeriod Neptune) 164.79132)

; Calculate the age on a given planet
(= (ageOnPlanet $planet $seconds)
   (let* (
      ; Convert the seconds to Earth years inside the main function
      ($earthYears (/ $seconds 31557600))
      ; Get the orbital period of the planet
      ($planetPeriod (PlanetOrbitalPeriod $planet))
   )
   ; Return the age on the planet
   (/ $earthYears $planetPeriod)
   )
)

; Example usage:
! (ageOnPlanet Earth 31557600)  ; Expected output is 1 Earth year
! (ageOnPlanet Venus 31557600)  ; Expected output is 1.6254948859817744]
