//
//  25562.swift
//  BOJ
//
//  Created by 정은서 on 2022/09/22.
//

import Foundation

func solve(){
    
    let N = Int(readLine()!)!
    
    let max_arr = get_max(N: N)
    let min_arr = get_min(N: N)
    
    print("\(N*(N-1)/2)")
    for e in max_arr {
        print(e, terminator: " ")
    }
    print("\n\(N-1)")
    for e in min_arr {
        print(e, terminator: " ")
    }
}

func get_max(N: Int)->[Int]{

    var arr: [Int] = []
    var cur_max = 0
    var prev = 0
    
    for _ in 0..<N{
        let cur = prev + cur_max + 1
        arr.append(cur)
        prev = cur
        cur_max = cur - 1
    }
    
    return arr
}

func get_min(N: Int)->[Int]{
    
    var arr: [Int] = []
    
    for i in 1...N{
        arr.append(i)
    }
    
    return arr
    
}

