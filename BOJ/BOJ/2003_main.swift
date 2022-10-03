//
//  2003_main.swift
//  BOJ
//
//  Created by 정은서 on 2022/08/12.

//import Foundation
//
//func main_(){
//    let input_ = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let N = input_[0]
//    let M = input_[1]
//    
//    let A = readLine()!.split(separator: " ").map{Int(String($0))!}
//    
//    var start = 0
//    var end = 0
//    var accum = A[0]
//    var count = 0
//    
//    while(end<N){
//        if accum >= M {
//            if accum == M{
//                count += 1
//            }
//            accum -= A[start]
//            start += 1
//                        
//        }else{
//            end += 1
//            if end == N {
//                break
//            }
//            accum += A[end]
//        }
//    }
//    
//    print(count)
//    
//}
//
//
//    
//main_()
