codons = {
    "AUG": "Methionine",
    "UUU": "Phenylalanine",
    "UUC": "Phenylalanine",
    "UUA": "Leucine",
    "UUG": "Leucine",
    "UCU": "Serine",
    "UCC": "Serine",
    "UCA": "Serine",
    "UCG": "Serine",
    "UAU": "Tyrosine",
    "UAC": "Tyrosine",
    "UGU": "Cysteine",
    "UGC": "Cysteine",
    "UGG": "Tryptophan",
    "UAA": "STOP",
    "UAG": "STOP",
    "UGA": "STOP",
}

def proteins_recursive(strand, result):
    codon = strand[:3]
    value = codons.get(codon, "STOP")
    if(value == "STOP" or len(strand) < 3):
        return result
    result.append(value)
    return proteins_recursive(strand[3:], result)

def proteins(strand):
    result = []
    return proteins_recursive(strand, result)
