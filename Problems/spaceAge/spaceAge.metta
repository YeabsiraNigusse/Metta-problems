; Define the orbital periods for each planet
(= (planet-orbital-period Mercury) 0.2408467)
(= (planet-orbital-period Venus) 0.61519726)
(= (planet-orbital-period Earth) 1.0)
(= (planet-orbital-period Mars) 1.8808158)
(= (planet-orbital-period Jupiter) 11.862615)
(= (planet-orbital-period Saturn) 29.447498)
(= (planet-orbital-period Uranus) 84.016846)
(= (planet-orbital-period Neptune) 164.79132)

(= (seconds-to-earth-years $seconds) 
   (/ $seconds 31557600))

(= (age-on-planet $planet $seconds)
   (/ (seconds-to-earth-years $seconds) 
      (planet-orbital-period $planet)))

! (age-on-planet Venus 1000000)
