parent = []
to_trav = []
city_n = 0
trav_n = 0

def find(x):
    print(x)
    p = parent[x]
    print("p: ", p,"x: ", x)
    if p == x :
        print("re")
        return p    
    return find(p)

def isUnion(x, y):
    if find(x) == find(y):
        return True
    else:
        return False

def union(x, y):
    if isUnion(x, y)==False:
        
        return find(x)

def isAvailable():
    for i in range(1, trav_n-1):
        if isUnion(x, y)==False:
            return False
    return True


parent.append(0)
city_n = int(input())

for i in range (1, city_n+1):
    parent.append(i)

trav_n = int(input())

for k in range(1, city_n+1):
    st = input()

    for i in range(0, city_n):
        # print("now: ("+str(k)+", "+str(i+1)+")")
        index = 2*i
        isLinked = int(st[index])
        if isLinked == 1:
            print(type(k),type(i))
            parent[find(i+1)] = union(k, i+1)
        # print("end: ("+str(k)+", "+str(i+1)+")")

    print("tal?", k)

st = input()
print("st!:"+st)

for i in range(0, trav_n):
    index = 2*i
    city = int(st[index])
    to_trav.append(city)



print("city_n: ", city_n)

for i in range(1, city_n+1):
    print("i: "+1+"p: "+parent[i])

if isAvailable():
    print("YES")
else:
    print("NO")