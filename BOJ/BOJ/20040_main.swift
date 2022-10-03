// BOJ 20040

/*
import Foundation

var point_n = 0
var turn = 0

var parent : [Int] = []
var root : [Int] = []
var rank : [Int] = []
var fin_bool = false
var finish = 0

func find(x: Int)->Int{
    return root[x]
}

func isUnion(x: Int, y: Int)->Bool{

    let root_x = root[x]
    let root_y = root[y]
    
    if root_x == root_y {
        return true
    }else{
        return false
    }
}

func union(x: Int, y: Int){
    if root[x] != root[y]{
//        parent[find(x: y)] = find(x: x)
        var min_root_x = 0
        var max_root_y = 0
        
        var max_rank_x = 0
        var min_rank_y = 0
        
        if root[x] <= root[y] {
            min_root_x = x
            max_root_y = y
        }else{
            min_root_x = y
            max_root_y = x
        }
        
        if rank[min_root_x] >= rank[max_root_y] {
            max_rank_x = min_root_x
            min_rank_y = max_root_y
        }else{
            max_rank_x = max_root_y
            min_rank_y = min_root_x
        }
        
//        print("x: \(max_rank_x), y: \(min_rank_y)")
//        print(root)
        let root_x = root[max_rank_x]
        let root_y = root[min_rank_y]
        root[root_y] = root_x
        rank[root_x] += rank[root_y]
//        print(root)
    }
}

func get_input(){
    
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    point_n = input[0]
    turn = input[1]
    
    for i in 0...point_n-1{
        parent.append(i)
        root.append(i)
        rank.append(1)
        
    }
    
    for i in 0...turn-1{
        let input = readLine()!.split(separator: " ").map{Int(String($0))!}
        print("i:\(i), input: \(input)")
        let p1 = input[0]
        let p2 = input[1]
        
        if !isUnion(x: p1, y: p2){
            union(x: p1, y: p2)
        }else if !fin_bool{
            finish = i+1
            fin_bool = true
        }
    }
    
}

get_input()

print(finish)
*/
