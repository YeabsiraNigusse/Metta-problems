## Space Age Calculator

The code defines functions to calculate the age of a person on different planets based on their age in seconds.

**Function Definitions**


**PlanetOrbitalPeriod(Planet)**

Defines the orbital period of each planet in Earth years.

Orbital Periods:

Mercury: 0.2408467 Earth years

Venus: 0.61519726 Earth years

Earth: 1.0 Earth year

Mars: 1.8808158 Earth years

Jupiter: 11.862615 Earth years

Saturn: 29.447498 Earth years

Uranus: 84.016846 Earth years

Neptune: 164.79132 Earth years


**ageOnPlanet($planet, $seconds):** Calculates the age on a given planet based on the age in seconds.

**Steps**

1. Convert the age in seconds to Earth years.
2. Retrieve the orbital period of the specified planet.
3. Calculate the age on the planet by dividing the Earth years by the planet's orbital period.