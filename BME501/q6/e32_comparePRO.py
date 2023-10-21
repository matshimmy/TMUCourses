#!/usr/bin/python3
# ---------------------------------------------------e32.py
# in e22.py we wrote a translation function.
# in this program compare the amino acid sequences derived
# from the DNA sequences of m2-7.txt and m2-9.txt
# assuming they line up starting at the first letter and
# going to the end of the shorter of the two sequences
# -----------------------------------------------------------
# ----------------------------------------------------
# OPENING
# ----------------------------------------------------
f1 = open('m2-7.txt')
f1.readline()
f2 = open('m2-9.txt')
f2.readline()
# ----------------------------------------------------
# READING AND REMOVING NEWLINES
# ----------------------------------------------------
seq1 = f1.read()
seq2 = f2.read()
seq1 = seq1.replace('\n', '')
seq2 = seq2.replace('\n', '')
# ----------------------------------------------------
# THE CODON DICTIONARY
# ----------------------------------------------------
aa = {'GGG' : 'G', 'GGA' : 'G', 'GGC' : 'G', 'GGU' : 'G', 
      'AGG' : 'R', 'AGA' : 'R', 'AGC' : 'S', 'AGU' : 'S', 
      'CGG' : 'R', 'CGA' : 'R', 'CGC' : 'R', 'CGU' : 'R', 
      'UGG' : 'W', 'UGA' : 'X', 'UGC' : 'C', 'UGU' : 'C',
      
      'GAG' : 'E', 'GAA' : 'E', 'GAC' : 'D', 'GAU' : 'D',
      'AAG' : 'K', 'AAA' : 'K', 'AAC' : 'N', 'AAU' : 'N', 
      'CAG' : 'Q', 'CAA' : 'Q', 'CAC' : 'H', 'CAU' : 'H', 
      'UAG' : 'X', 'UAA' : 'X', 'UAC' : 'Y', 'UAU' : 'Y', 
      
      'GCG' : 'A', 'GCA' : 'A', 'GCC' : 'A', 'GCU' : 'A',
      'ACG' : 'T', 'ACA' : 'T', 'ACC' : 'T', 'ACU' : 'T', 
      'CCG' : 'P', 'CCA' : 'P', 'CCC' : 'P', 'CCU' : 'P', 
      'UCG' : 'S', 'UCA' : 'S', 'UCC' : 'S', 'UCU' : 'S', 
      
      'GUG' : 'V', 'GUA' : 'V', 'GUC' : 'V', 'GUU' : 'V',
      'AUG' : 'M', 'AUA' : 'I', 'AUC' : 'I', 'AUU' : 'I', 
      'CUG' : 'L', 'CUA' : 'L', 'CUC' : 'L', 'CUU' : 'L', 
      'UUG' : 'L', 'UUA' : 'L', 'UUC' : 'F', 'UUU' : 'F', 
    }
# ----------------------------------------------------
# THE TRANSLATION FUNCTION
# ----------------------------------------------------
# define translate function
# input rna might be CCCGGGUAGGUC
# should return         PGXV
def translate(rna) :
    result = ''
    for i in range(0, len(rna), 3) :
        triplet = rna[i : i + 3]
        if triplet in aa.keys() :
            value = aa[triplet]
        else :
            value = '-'
        result = result + value
    return result
# ----------------------------------------------------
# CHANGING THE DNA TO RNA
# ----------------------------------------------------
rna1 = seq1.replace('T', 'U')
rna2 = seq2.replace('T', 'U')
print('---------------')
print('length rna1:', len(rna1), 'rna2: ', len(rna2))
# ----------------------------------------------------
# TRANSLATING THE RNA TO PROTEIN
# ----------------------------------------------------
pro1 = translate(rna1)   # fix this
pro2 = translate(rna2)   # fix this
pass
print('---------------')
print(pro1)
print(pro2)
print('---------------')
# ----------------------------------------------------
# COMPARING THE TWO AMINO ACID SEQUENCES, COUNT DIFFERENCES
# ----------------------------------------------------
n1 = len(pro1)
n2 = len(pro2)
shorter = min(n1, n2)
count = 0
for x in range(shorter):
    if pro1[x] == pro2[x]:
        count += 1
print('----------------------')
identity = (count / shorter) * 100
print('The {} differences in {} amino acids means {:.1f}% identity'.format(count, shorter, identity))


