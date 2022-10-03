from collections import Counter

N = int(input())
ans = [-1] * N
dict = {}
stack = []
arr = list(map(int, input().split()))

for i in range(0, N):
    if dict.get(arr[i]) == None:
        dict[arr[i]] = 1
    else:
        dict[arr[i]] += 1

for i in range(1, N+1):
    exist = False
    while stack and not exist:
        last = stack[-1]
        if dict[last] <= dict[arr[N-i]]:
            stack.pop()
        else:
            ans[N-i] = last
            exist = True
    stack.append(arr[N-i])

for e in ans:
    print(e, end=' ')