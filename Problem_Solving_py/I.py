from ast import Try
import sys
import heapq

N, M, K = map(int, sys.stdin.readline().split())

grid = []
pos = []
ypos = []

for _ in range(N):
    tmp = list(map(int, sys.stdin.readline().split()))
    grid.append(tmp)

dx = [0, 0, -1, 1]
dy = [-1, 1, 0, 0]

def isValid(x, y):

    if (x<0) | (y<0) | (x>=M) | (y>=N) :
        return False

    else: 
        return True

def grid_bfs(graph, sx, sy):
    total = 0
    visited = [[False for j in range(M)] for i in range(N)]
    q = [(sy, sx)]
    if grid[sy][sx] == 1:
        total += 1
        heapq.heappush(pos, (sx, sy))
        heapq.heappush(ypos, (sy, sx))
    visited[sy][sx] = True
    while q:
        cur_n = q.pop(0)
        x = cur_n[1]
        y = cur_n[0]

        for i in range(4):
            adx = x + dx[i]
            ady = y + dy[i]
            
            if (isValid(adx, ady)):
                if (not visited[ady][adx]):
                    q.append((ady, adx))
                    visited[ady][adx] = True
                    
                    if grid[ady][adx] == 1:
                        total += 1
                        heapq.heappush(pos,(adx, ady))
                        heapq.heappush(ypos, (ady, adx))
    return total

res = grid_bfs(grid, 0, 0)
#grid_bfs2(position_check, 0, 0)

#first_seed = [sx, sy, ex, ey]
#second_seed = [sx, sy, ex, ey]

first_seed = []
second_seed = []

if res >= 2*K:
    print(0)
elif res == K:
    #모두 겹치는 경우
    print(pos[0][0], pos[0][1])
else:
    print(2*K-res)
    if K>2:
        if pos[0][0] == pos[1][0] == pos[2][0]:
            first_seed.append(pos[0][0])
            first_seed.append(pos[0][1])
            first_seed.append(pos[0][0])
            first_seed.append(pos[0][1]+K-1)
            if pos[K][0] == pos[0][0]:
                no_ = pos[-1][1] - pos[K-1][1]
                for i in range((K-no_)-1):
                    print(pos[K-(no_-i)][1]+1, pos[K-(no_-i)][0]+1)
            else:
                print(pos[K-1][0]+1, pos[K-1][1])
        else:
            first_seed.append(pos[0][0])
            first_seed.append(pos[0][1])
            first_seed.append(pos[0][0]+K-1)
            first_seed.append(pos[0][1])
            if pos[K][0] == pos[K-1][0]+1:
                no_ = 2*K - res
                for i in range(1, no_+1):
                    print(first_seed[2]-no_+i+1, first_seed[3]+1)
            else:
                if ypos[0][0] == first_seed[1]:
                    print(ypos[1][1]+1, ypos[0][0]+1)
                else:
                    print(ypos[0][1]+1 ,first_seed[1]+1)
    else:
        if pos[0][0] == pos[1][0]:
            print(pos[0][0]+1, pos[2][1]+1)
        else:
            print(pos[1][0]+1, pos[0][1]+1)


