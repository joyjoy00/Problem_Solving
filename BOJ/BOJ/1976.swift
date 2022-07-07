//
//  1976.swift
//  BOJ
//
//  Created by 정은서 on 2022/07/07.
//

import Foundation

extension String{
    func substring(s: Int, t: Int, A: String)->String{
        let sIdx = A.index(A.startIndex, offsetBy: s)
        let tIdx = A.index(A.startIndex, offsetBy: t)
        return String(A[sIdx...tIdx])
        
    }
}

class onssi{
    
    private var parent:[Int] = []
    private var to_trav:[Int] = []
    private var city_n: Int
    private var trav_n: Int
    
    init(){
        parent.append(0)
        city_n = 0
        trav_n = 0
    }
    
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
        
        //print("\n\(city_n), \(trav_n)")
        
        for k in 1...city_n{

            let isLinked = readLine()!.split(separator: " ").map{ Int(String($0))! }

            for i in 0...city_n-1{

                //print("link: \(isLinked) with \(k)")
                
                if isLinked[i] == 1{
                    union(x: k, y: i+1)
                }
            }
            
        }

        

        to_trav = readLine()!.split(separator: " ").map {Int(String($0))!}

    //
    //        for i in 1...city_n{
    //            print(parent[i])
    //        }
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
            //print("node ", x,"and ", y)

            parent[find(x: y)] = find(x: x)
    //            print(find(x: x),"and ", find(x: y))
    //            print("here??")

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
}
