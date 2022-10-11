export const isPangram = (sentence) => {
  const counter = Array(26)
    .fill()
    .map((_, index) => String.fromCharCode("A".charCodeAt(0) + index))
    .reduce((table, element) => ({ ...table, [element]: 0 }), {});

  sentence
    .toUpperCase()
    .split("")
    .forEach((element) => {
      if (Object.keys(counter).includes(element)) counter[element] += 1;
    });

  return Object.values(counter).every((element) => element > 0);
};
