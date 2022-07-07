//
//  union_find_basic.swift
//  BOJ
//
//  Created by 정은서 on 2022/07/04.
//

import Foundation


class union_find_basic{
    
    private var parent = [Int](repeating: 0, count: 9)
    private var rank = [Int](repeating: 0, count: 9)

    func initArr(){
        for i in stride(from: 0, to: 9, by: 1){
            parent[i] = i
            rank[i] = 1
        }
    }
    
    func main_(){

        self.initArr()
        
        union(x: 1, y: 2)
        union(x: 4, y: 5)
        union(x: 5, y: 6)
        
        print("Is 2 union with 4? ", is_union(x: 2, y: 4) )
        
        union(x: 1, y: 5)
        
        print("Is 2 union with 4? ", is_union(x: 2, y: 4) )
        
        print("idx / parent / rank")
        for i in stride(from: 0, to: 9, by: 1){
            print(i," ", parent[i], " ", rank[i])
        }
    }
    
    // Find its root node
    func find(x : Int) -> Int{
        var parent_node = parent[x]
        if x == parent_node{
            return x
        }
        return find(x: parent_node)
    }
    
    // Union 할 때, rank가 더 낮은 트리 밑으로 높은 트리가 들어가면 트리가 깊어져 비효율적.
    // Merge two sets which have each node x and y
    func union(x: Int, y: Int) {
        var max_: Int
        var oth_: Int
        if rank[x]>=rank[y] {
            max_ = x
            oth_ = y
        }else{
            max_ = y
            oth_ = x
        }
        
        let x_root = find(x: max_)
        let y_root = find(x: oth_)
        
        
        if x_root != y_root{
            parent[y_root] = x_root
//            print("x, y: ", x, y)
//            print("prev rank: ", rank[x_root])
            rank[x_root] += rank[y_root]
//            print("now rank: ", rank[x_root], "\n")
        }
    }
    
    // Define if the two node in same set or not
    func is_union(x: Int, y: Int) -> Bool{
        let x_root = find(x: x)
        let y_root = find(x: y)
        
        if x_root == y_root {
            return true
        }else{
            return false
        }
    }

}

