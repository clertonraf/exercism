// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

const standardDrinksPreparationTime = {
  "Pure Strawberry Joy": 0.5,
  Energizer: 1.5,
  "Green Garden": 1.5,
  "Tropical Island": 3,
  "All or Nothing": 5,
};

const limeWedgesBySize = {
  small: 6,
  medium: 8,
  large: 10,
};

/**
 * Determines how long it takes to prepare a certain juice.
 *
 * @param {string} name
 * @returns {number} time in minutes
 */
export function timeToMixJuice(name) {
  return Object.keys(standardDrinksPreparationTime).includes(name)
    ? standardDrinksPreparationTime[name]
    : 2.5;
}

/**
 * Calculates the number of limes that need to be cut
 * to reach a certain supply.
 *
 * @param {number} wedgesNeeded
 * @param {string[]} limes
 * @returns {number} number of limes cut
 */
export function limesToCut(wedgesNeeded, limes) {
  let cutLimes = 0;
  limes.reduce((totalNumberOfLimes, lime) => {
    if (totalNumberOfLimes >= wedgesNeeded) return totalNumberOfLimes;
    cutLimes++;
    return totalNumberOfLimes + limeWedgesBySize[lime];
  }, 0);
  return cutLimes;
}

/**
 * Determines which juices still need to be prepared after the end of the shift.
 *
 * @param {number} timeLeft
 * @param {string[]} orders
 * @returns {string[]} remaining orders after the time is up
 */
export function remainingOrders(timeLeft, orders) {
  const prepared = [...orders];
  // @ts-ignore
  orders.reduce((time, order) => {
    if (time < timeLeft) {
      prepared.shift();
      return time + timeToMixJuice(order);
    }
  }, 0);
  return prepared;
}
