import sys


freq = 0
entries = []

d1_in = open(sys.argv[1], 'r')
for entry in d1_in.readlines():
    entries.append(int(entry))
    freq += int(entry)

print("p1:{}".format(freq))


freq = 0
freq_set = {0}
repeat = None

i = 0
while repeat is None:
    if i >= len(entries):
        i = 0

    freq += entries[i]
    i += 1
    if freq in freq_set:
        repeat = freq
    else:
        freq_set.add(freq)

print("p2:{}".format(repeat))
