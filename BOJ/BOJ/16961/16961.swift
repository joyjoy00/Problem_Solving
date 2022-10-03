//
//  16961_main.swift
//  BOJ
//
//  Created by 정은서 on 2022/09/13.
//

import Foundation

func solve_16961(){
    
    var hotel = Array(repeating: Array(repeating: 0, count: 367), count: 3)
    
    let dict = ["T": 0, "S": 1]
    var ans = Array(repeating: 0, count: 5)
    
    let N = Int(readLine()!)!
    
    for _ in 0..<N {
        
        let input = readLine()!.split(separator: " ")
        let person = dict[String(input[0])]!
        let s = Int(input[1])!
        let e = Int(input[2])!
        
        for i in s...e{
            hotel[person][i] += 1
            hotel[2][i] += 1
            // 5번 질문
            if ans[4] <= (e-s)+1 {
                ans[4] = (e-s)+1
            }
        }
    }
    
    for i in 1...366{
        
        if hotel[2][i] > 0 {
            ans[0] += 1 // 1번 질문
        }
        
        if ans[1] < hotel[2][i]{
            ans[1] = hotel[2][i] // 2번 질문
        }
        
        if (hotel[0][i] == hotel[1][i]) && (hotel[2][i]>0){
            ans[2] += 1 // 3번 질문
            if ans[3] < hotel[2][i] {
                ans[3] = hotel[2][i] // 4번 질문
            }
        }
    }
    
    for e in ans{
        print(e)
    }
    
}
