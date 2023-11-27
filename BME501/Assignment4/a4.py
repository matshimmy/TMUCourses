f1 = open('curedGapless.txt')
f2 = open('m2-9.txt')
# ----------------------------------------------------
# READING AND REMOVING NEWLINES
# ----------------------------------------------------
print(f1.readline())
print(f2.readline())

seq1 = f1.read()
seq2 = f2.read()

seq1 = seq1.replace('\n', '')
n1 = len(seq1)
seq2 = seq2.replace('\n', '')
n2 = len(seq2)
# ----------------------------------------------------
# COUNTING DIFFERENCES
# ----------------------------------------------------
shorter = min(n1, n2)
print('The shorter of the lengths {} and {} is {}'.format(n1, n2, shorter))
count = 0

for x in range(shorter):
    if seq1[x] == seq2[x]:
        count += 1

identity = (count / shorter) * 100
# ----------------------------------------------------
# PRINT PERCENT IDENTITY to one decimal place accuracy
# ----------------------------------------------------
print('The {} differences in {} bp means {:.1f}% identity'.format(count, shorter, identity))