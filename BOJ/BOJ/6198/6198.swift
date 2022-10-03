//
//  6198.swift
//  BOJ
//
//  Created by 정은서 on 2022/09/28.
//

import Foundation

func solve_6198(){
    var bench = 0
    var heights:[Int] = []
    
    let N = Int(readLine()!)!

    for _ in 0..<N{
        let h = Int(readLine()!)!
        
        if heights.isEmpty{
            heights.append(h)
        }else{
            var last = heights.last!
            while h >= last{
                heights.removeLast()
                if !heights.isEmpty{
                    last = heights.last!
                }else{
                    break
                }
            }
            bench += heights.count
            heights.append(h)
        }
    }
    
    print("\(bench)")
}


