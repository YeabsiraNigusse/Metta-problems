# Planetary Age Calculator in meTTa

This project implements a function to calculate a person’s age on different planets based on their time lived in seconds. The calculation is based on the orbital periods of the planets relative to Earth's orbital period.

## Description

### Definitions

1. **`Planet`**: A type that represents the planets in our solar system.
   - Supported planets: Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune.

2. **`orbital-period`**: This represents the orbital period of a planet around the Sun, relative to Earth's period (which is 1 Earth year). For example, the orbital period of Mercury is approximately 0.24 Earth years.

3. **`earth-years`**: Converts a given number of seconds into Earth years. One Earth year is considered to be 31,557,600 seconds (365.25 days).

4. **`ageOn`**: Calculates a person's age on a given planet using the formula:
   \[
   \text{ageOn(planet, seconds)} = \frac{\text{earth-years(seconds)}}{\text{orbital-period(planet)}}
   \]
   This means it divides the Earth equivalent of the time in seconds by the planet's orbital period.

## Example Usage

- `! (ageOn Venus 3557489)` returns the age on Venus for the given time in seconds.

### Orbital Periods:
- Mercury: 0.2408467 Earth years
- Venus: 0.61519726 Earth years
- Earth: 1.0 Earth year
- Mars: 1.8808158 Earth years
- Jupiter: 11.862615 Earth years
- Saturn: 29.447498 Earth years
- Uranus: 84.016846 Earth years
- Neptune: 164.79132 Earth years

## Example Demonstration

- Calculate age on **Venus**:
  ```meTTa
  ! (ageOn Venus 3557489) ; Output will return your age on Venus.
