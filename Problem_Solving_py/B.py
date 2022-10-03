import sys

N = int(sys.stdin.readline())
sx, sy, ex, ey = map(int, sys.stdin.readline().split())

min_ = 1e18
min_n = 1

def get_distance(x1, y1, x2, y2):
    return abs(x1-x2) + abs(y1-y2)

for i in range(1,N+1):
    Mi = int(sys.stdin.readline())
    prev_x, prev_y = sx, sy
    accum = 0
    for _ in range(Mi):
        cur_x, cur_y = map(int, sys.stdin.readline().split())
        accum += get_distance(prev_x, prev_y, cur_x, cur_y)
        prev_x, prev_y = cur_x, cur_y

    cur_x, cur_y = ex, ey    
    accum += get_distance(prev_x, prev_y, cur_x, cur_y)

    if min_ >= accum:
        min_ = accum
        min_n = i

print(min_n)

