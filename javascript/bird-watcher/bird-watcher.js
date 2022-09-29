// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Calculates the total bird count.
 *
 * @param {number[]} birdsPerDay
 * @returns {number} total bird count
 */
export function totalBirdCount(birdsPerDay) {
  return birdsPerDay.reduce(
    (previusValue, currentValue) => previusValue + currentValue,
    0
  );
}

/**
 * Calculates the total number of birds seen in a specific week.
 *
 * @param {number[]} birdsPerDay
 * @param {number} week
 * @returns {number} birds counted in the given week
 */
export function birdsInWeek(birdsPerDay, week) {
  return birdsPerDay.reduce(
    (accumulator, currentValue, currentIndex) =>
      Math.floor(currentIndex / 7) === week - 1
        ? accumulator + currentValue
        : accumulator,
    0
  );
}

/**
 * Fixes the counting mistake by increasing the bird count
 * by one for every second day.
 *
 * @param {number[]} birdsPerDay
 * @returns {number[]} corrected bird count data
 */
export function fixBirdCountLog(birdsPerDay) {
  birdsPerDay.forEach((value, index) => {
    if (index % 2 === 0) birdsPerDay[index] = ++value;
  });
  return birdsPerDay;
}
