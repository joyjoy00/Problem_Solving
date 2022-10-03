//
//  tmp2.swift
//  BOJ
//
//  Created by 정은서 on 2022/08/12.
//

//import Foundation
//
//var dp:[Int] = []
//var tp: [[Int]] = []
//
//func main_(){
//    
//    let N = Int(readLine()!)!
//    dp = [Int](repeating: 0, count: N+2)
//    tp.append([0, 0])
//    
//    for _ in 0..<N{
//        let tmp = readLine()!.split(separator: " ").map{Int(String($0))!}
//        
//        tp.append(tmp)
//    }
//    
//    
//    for i in stride(from: N, to: 0, by: -1){
//        if i + tp[i][0] > N+1{
//            dp[i] = dp[i+1]
//        }else{
//            dp[i] = max(dp[i+tp[i][0]]+tp[i][1], dp[i+1])
//        }
//    }
//    
//    print(dp[1])
//}
//
//main_()
