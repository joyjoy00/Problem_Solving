//
//  1003_main.swift
//  BOJ
//
//  Created by 정은서 on 2022/07/15.
//

/*
import Foundation

func main_(){
    
    let tc = Int(readLine()!)!
    
    for _ in 0..<tc{
        let N = Int(readLine()!)!
        var DP_0 = [1, 0]
        var DP_1 = [0, 1]
        
        if N>1{
            for i in 2...N{
                DP_0.append(DP_0[i-1]+DP_0[i-2])
                DP_1.append(DP_1[i-1]+DP_1[i-2])
            }
        }
        
        
        print("\(DP_0[N]) \(DP_1[N])")
    }
    
}

main_()
*/
