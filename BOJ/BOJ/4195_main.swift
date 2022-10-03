//
//  4195_main.swift
//  BOJ
//
//  Created by 정은서 on 2022/07/08.
//
/*
import Foundation

var dict: [String: String] = [:]
var rank: [String: Int] = [:]

func find(name: String)->String{
    

    if dict[name] == name{
        return name
    }
    dict[name] = find(name:dict[name]!)
    return dict[name]!

}

func isUnion(a: String, b: String)->Bool{
    if find(name: a) == find(name: b) {
        return true
    }else{
        return false
    }
}


func union(a: String, b: String){
    let root_a = find(name: a)
    let root_b = find(name: b)
    
    if root_a != root_b{
//        var parent = ""
//        var child = ""
//        if rank[root_a]! >= rank[root_b]! {
//            parent = root_a
//            child = root_b
//        }else{
//            parent = root_b
//            child = root_b
//        }
//
        dict[root_b] = root_a
        rank[root_a]! += rank[root_b]!
    }
    
}

if let tc = Int(readLine()!) {
    for _ in 0..<tc{
        
        dict = [:]
        rank = [:]
        if let input = Int(readLine()!){
            for _ in 0..<input{
                let friends = readLine()!.split(separator: " ").map{String($0)}
                //print(friends)
                if !dict.keys.contains(friends[0]){
                    dict[friends[0]] = friends[0]
                    rank[friends[0]] = 1
                }
                
                if !dict.keys.contains(friends[1]){
                    dict[friends[1]] = friends[1]
                    rank[friends[1]] = 1
                }
                union(a: friends[0], b: friends[1])
                
//                print(rank)
//                print(rank[find(name: friends[0])]!," ", rank[find(name: friends[1])]!)
                print(rank[find(name: friends[0])]!)
            }
        }
    }
}


*/

