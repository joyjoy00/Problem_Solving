//
//  21866_main.swift
//  BOJ
//
//  Created by 정은서 on 2022/09/13.
//

import Foundation

func solve_21866(){
   
    let max_score = [100, 100, 200, 200, 300, 300, 400, 400, 500]
    let score = readLine()!.split(separator: " ").map{Int(String($0))!}
    var res = "draw"
    var accum = 0

    for i in 0...8{
        accum += score[i]
        if score[i] > max_score[i]{
            res = "hacker"
            break
        }
    }
    
    if accum < 100{
        res = "none"
    }
    
    print(res)
}

