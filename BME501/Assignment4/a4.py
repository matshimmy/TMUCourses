import math

def CountDifferences(seq1, seq2):
	"""Count the number of differences between two sequences."""
	return sum(a != b for a, b in zip(seq1, seq2))

def ProcessSequences(filePath):
	sequences = {}
	with open(filePath, 'r') as file:
		currentLabel = ""
		for line in file:
			if line.startswith('>'):
				currentLabel = line[1:].strip()  # Remove '>' and trailing newline
				sequences[currentLabel] = ""
			else:
				sequences[currentLabel] += line.strip()
	return sequences

def CreateDifferenceMatrix(sequences):
	"""Create a matrix of differences between each pair of sequences."""
	labels = list(sequences.keys())
	n = len(labels)
	differenceMatrix = [[0] * n for _ in range(n)]

	for i in range(n):
		for j in range(i + 1, n):
			difference = CountDifferences(sequences[labels[i]], sequences[labels[j]])
			differenceMatrix[i][j] = difference
			differenceMatrix[j][i] = difference

	return differenceMatrix, labels

filePath = 'curedGapless.txt'
sequences = ProcessSequences(filePath)
differenceMatrix, labels = CreateDifferenceMatrix(sequences)

# Print the matrix with labels
print(" " * 20, end="")
for label in labels:
	print(f"{label[:15]:>15}", end="")
print()
for i, label in enumerate(labels):
	print(f"{label[:15]:<20}", end="")
	for j in range(len(labels)):
		print(f"{differenceMatrix[i][j]:>15}", end="")
	print()



# def jukes (D):
# 	""" Calculating K value from D and returning """
# 	K = (3/4)* math.log(((1-(4/3))*D), 2 )
# 	return (K) 