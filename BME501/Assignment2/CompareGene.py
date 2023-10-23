# BME501 Assginment 2 F2023
# Afrah Chishty 501027994
# Mya Hao 501108133
# Mathew Szymanowski 501094808

# --------------------------------------------------
# read the file(s)
data = open("./sequences.fasta", "r")  # Open sequences file
data = data.read()
data = data.replace("\n", "")

# define the dictionary, and location used to find the gene(s)
# format {"key": ["NCseq", "ORseq"]}
dic = {}
length = len(data)

# find the gene information from the file
while (length > 1):
	# determine the gene name
	ncIndex = data.find("NC")
	orIndex = data.find("OR")

	index = 0 if (ncIndex < orIndex and ncIndex != -1) else 1
	GeneStrStartIndex = data.find("|") + 1
	GeneStrEndIndex = (data[GeneStrStartIndex:].find(" ["))+GeneStrStartIndex
	GeneStr = data[GeneStrStartIndex:GeneStrEndIndex]
	data = data[GeneStrEndIndex:]

	# determine the gene sequence
	seqStart = data.find("]") + 1
	seqEnd = data.find(">")
	if seqEnd == -1:
		seqEnd = len(data)
	seq = data[seqStart:seqEnd]
	
	# add the information into the dictionary
	if GeneStr in dic.keys():
		dic[GeneStr][index] = seq
	else:
		if index == 0:
			dic[GeneStr] = [seq,""]
		else:
			dic[GeneStr] = ["",seq]

	data = data[seqEnd:]
	length = len(data)

aminoAcidDic = {'GGG': 'G', 'GGA': 'G', 'GGC': 'G', 'GGT': 'G',
				'AGG': 'R', 'AGA': 'R', 'AGC': 'S', 'AGT': 'S',
				'CGG': 'R', 'CGA': 'R', 'CGC': 'R', 'CGT': 'R',
				'TGG': 'W', 'TGA': 'X', 'TGC': 'C', 'TGT': 'C',

				'GAG': 'E', 'GAA': 'E', 'GAC': 'D', 'GAT': 'D',
				'AAG': 'K', 'AAA': 'K', 'AAC': 'N', 'AAT': 'N',
				'CAG': 'Q', 'CAA': 'Q', 'CAC': 'H', 'CAT': 'H',
				'TAG': 'X', 'TAA': 'X', 'TAC': 'Y', 'TAT': 'Y',

				'GCG': 'A', 'GCA': 'A', 'GCC': 'A', 'GCT': 'A',
				'ACG': 'T', 'ACA': 'T', 'ACC': 'T', 'ACT': 'T',
				'CCG': 'P', 'CCA': 'P', 'CCC': 'P', 'CCT': 'P',
				'TCG': 'S', 'TCA': 'S', 'TCC': 'S', 'TCT': 'S',

				'GTG': 'V', 'GTA': 'V', 'GTC': 'V', 'GTT': 'V',
				'ATG': 'M', 'ATA': 'I', 'ATC': 'I', 'ATT': 'I',
				'CTG': 'L', 'CTA': 'L', 'CTC': 'L', 'CTT': 'L',
				'TTG': 'L', 'TTA': 'L', 'TTC': 'F', 'TTT': 'F',
				# DNA
				}

# output missence (M), silent (S) or nonsense (N)
# will add to count to determine the number of differences
def compareCodons(codon1, codon2):
	# check M -- new amino acid is made
	if (aminoAcidDic[codon1] != aminoAcidDic[codon2]):
		return "M"
	# check S -- same amino acid, different code
	if (aminoAcidDic[codon1] == aminoAcidDic[codon2]):
		return "S"

	# check N -- check if it is a stop codon TAA TAG TGA
	if (aminoAcidDic[codon2] == "TAA" or aminoAcidDic[codon2] == "TAG" or
			aminoAcidDic[codon2] == "TGA"):
		return "N"
# function end


# display the table--------------------------------------
# printing out the table headers
sorted_dict = dict(sorted(dic.items()))
print("{:<30} {:<15} {:<10} {:<20} {:<10}"
	  .format('Gene', 'NC Length', 'OR Length ', 'Difference', 'Dif Count'))
# printing out the information for the table
for k, v in sorted_dict.items():
	NCseq, ORseq = v
	print("{:<30} {:<15} {:<10} {:<10}".format(k, len(NCseq), len(ORseq), 1))
