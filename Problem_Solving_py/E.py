import sys

T = int(sys.stdin.readline())


for _ in range(T):
    N = int(sys.stdin.readline())
    val = list(map(int, sys.stdin.readline().split()))
    mid_val = val[N-1]*N
    flag = True
    for i in range(1, N+1):    
        cur_i = N-i
        if cur_i >= 1:
            prev = 
            mid_val = prev-mid_val
            if mid_val < 0:
                flag = False
                break
        else:
            if mid_val % 2 == 1:
                flag = False

    print("YES" if flag else "NO")