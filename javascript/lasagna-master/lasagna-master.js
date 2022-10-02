/// <reference path="./global.d.ts" />
// @ts-check

export const cookingStatus = (timer) => {
  if (timer === undefined || timer === null)
    return "You forgot to set the timer.";
  return timer === 0 ? "Lasagna is done." : "Not done, please wait.";
};

export const preparationTime = (layers = [], averageTime = 2) =>
  layers.length * averageTime;

export const quantities = (layers = []) =>
  layers.reduce(
    (qtd, layer) => {
      if (layer === "noodles") return { ...qtd, noodles: (qtd.noodles += 50) };
      if (layer === "sauce") return { ...qtd, sauce: (qtd.sauce += 0.2) };
      return qtd;
    },
    { noodles: 0, sauce: 0 }
  );

export const addSecretIngredient = (friendsList = [], myList = []) => {
  const secretIngredient = friendsList[friendsList.length - 1];
  myList.push(secretIngredient);
};

export const scaleRecipe = (recipe = {}, portions = 0) => {
  if (!portions) return recipe;
  const newRecipe = {};
  for (let ingredient in recipe) {
    newRecipe[ingredient] = recipe[ingredient] * portions * 0.5;
  }
  return newRecipe;
};
