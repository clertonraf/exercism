const DNA_RNA = {
  C: "G",
  G: "C",
  T: "A",
  A: "U",
};

export const toRna = (dna) =>
  dna
    .toUpperCase()
    .split("")
    .map((char) => DNA_RNA[char] || char)
    .join("");
