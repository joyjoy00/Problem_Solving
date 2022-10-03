from cmath import cos
import sys

import heapq

graph = [] # graph 정보를 담을  
INF = 1e18
N, E = map(int, sys.stdin.readline().split())

for _ in range(N+1):
    graph.append([INF for i in range(N+1)])
    

def dijkstra(x):
    # x를 기준으로 모든 노드에 대해서 최단 거리를 구하는 함수
    cost = [INF for i in range(N+1)]
    cost[x] = 0
    pq = []
    heapq.heappush(pq, [cost[x], x])

    while pq:
        visiting = heapq.heappop(pq)
        visiting_node = visiting[1]
        visiting_cost = visiting[0]

        if cost[visiting_node] >= visiting_cost:
            for i in range(1, N+1):
                target_cost = cost[i]
                new_cost = visiting_cost + graph[visiting_node][i]
                if target_cost > new_cost :
                    cost[i] = new_cost
                    heapq.heappush(pq, [new_cost, i])
    return cost

for _ in range(E):
    a, b, c = map(int, sys.stdin.readline().split())
    graph[a][b] = c
    graph[b][a] = c

v1, v2 = map(int, sys.stdin.readline().split())

from_start = dijkstra(1)
from_v1 = dijkstra(v1)
from_v2 = dijkstra(v2)

v1_v2 = from_start[v1] + from_v1[v2] + from_v2[N]
v2_v1 = from_start[v2] + from_v2[v1] + from_v1[N]

ans = min(v1_v2, v2_v1)
print(ans if ans < INF else -1)



