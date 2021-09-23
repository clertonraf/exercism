dna_rna = {
    "A": "U",
    "G": "C",
    "C": "G",
    "T": "A",
}

def to_rna(dna_strand):
    return "".join(list(map(lambda x: dna_rna.get(x, ""), dna_strand)))
