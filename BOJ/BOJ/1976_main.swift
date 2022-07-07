//
//  main.swift
//  BOJ
//
//  Created by 정은서 on 2022/07/04.
//


/* 전체 주석을 해제하고 main.swift로 실행
import Foundation

var parent:[Int] = []
var to_trav:[Int] = []
var city_n: Int = 0
var trav_n: Int = 0


func main_(){
    get_input()
    if isAvailable(){
        print("YES")
    }else{
        print("NO")
    }
}

func get_input(){
    
    guard let input = readLine() else{
        return
    }
    
    city_n = Int(input)!
    
    for i in 1...city_n{
        parent.append(i)
    }
    
    guard let input = readLine() else{
        return
    }
    
    trav_n = Int(input)!

    for k in 1...city_n{

        let isLinked = readLine()!.split(separator: " ").map{ Int(String($0))! }

        for i in 0...city_n-1{

            
            if isLinked[i] == 1{
                union(x: k, y: i+1)
            }
        }
        
    }

    

    to_trav = readLine()!.split(separator: " ").map {Int(String($0))!}

}

// find node x's root node
func find(x: Int)->Int{
    let p = parent[x]
    if p == x {
        return p
    }
    return find(x: p)
}

func isUnion(x: Int, y: Int) -> Bool {
    if find(x: x) == find(x: y) {
        return true
    }else{
        return false
    }
}

func union(x: Int, y: Int){
    if !(isUnion(x: x, y: y)){


        parent[find(x: y)] = find(x: x)

    }
}

func isAvailable()->Bool{
    for i in 1...trav_n-1{
        if !isUnion(x: to_trav[0], y: to_trav[i]){
            return false
        }
    }
    
    return true
}

parent.append(0)
main_()

*/
