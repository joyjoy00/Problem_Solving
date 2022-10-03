import sys

arr = []
dict = {}
MAX = 1000000007

def find(a):
    if arr[a] != a:
        arr[a] = find(arr[a])
        return arr[a]
    else:
        return a

# def merge(a, b):
#     f_a = find(a)
#     f_b = find(b)

#     if (f_b==b):
#         if(f_a == a):
#             arr[b] = f_a
#         else:
#             arr[a] = f_b
#     else:
#         arr[a] = f_b

N, M = map(int, sys.stdin.readline().split())

for i in range(0, N+1):
    arr.append(i)

for i in range (0,M):
    first, second = map(int, sys.stdin.readline().split())
    arr[second] = find(first)
    
res = 1

# update every union into degree only 2
for i in range(1,N+1):
    a = find(i)
    if a in dict:
        dict[a] = dict[a] + 1
    else:
        dict[a] = 1

for item in dict.values():
    res = ((res % MAX) * (item%MAX))%MAX

print(dict)
print(res)
