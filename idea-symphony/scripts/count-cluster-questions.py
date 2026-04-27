import re
lines = open('QUESTIONS.md').readlines()
cur = None
counts = {}
order = []
for line in lines:
    m = re.match(r'^## Topic Cluster (\d+)', line)
    if m:
        cur = m.group(1)
        counts[cur] = 0
        order.append(cur)
        continue
    if cur and re.match(r'^\d+\.\s\*\*', line):
        counts[cur] += 1
for c in order:
    print(f'Cluster {c}: {counts[c]}')
print('Total:', sum(counts.values()))