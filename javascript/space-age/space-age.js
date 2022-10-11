const EARTH_YEAR_IN_SECONDS = 31_557_600;

const IN_EARTH_ORBIT = {
  earth: 1,
  jupiter: 11.862615,
  mars: 1.8808158,
  mercury: 0.2408467,
  neptune: 164.79132,
  saturn: 29.447498,
  uranus: 84.016846,
  venus: 0.61519726,
};

export const age = (planet, ageInSeconds) =>
  Number(
    Number(
      ageInSeconds /
        (EARTH_YEAR_IN_SECONDS * (IN_EARTH_ORBIT[planet.toLowerCase()] || 1))
    ).toFixed(2)
  );
