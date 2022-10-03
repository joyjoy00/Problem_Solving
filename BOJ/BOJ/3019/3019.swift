//
//  3019.swift
//  BOJ
//
//  Created by 정은서 on 2022/09/22.
//
import Foundation

func solve3019(){
    
    let blocks = [
        [[0], [0,0,0,0]],
        [[0,0]],
        [[0,0,1], [1,0]],
        [[1,0,0], [0,1]],
        [[1,0,1], [0,0,0], [1,0], [0,1]],
        [[0,0,0], [0,0], [0,1,1], [2,0]],
        [[0,0,0], [0,2], [1,1,0],[0,0]],
    ]
    var res = 0
    
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    let C = input[0]
    let P = input[1]
    
    let field = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    let cur_block = blocks[P-1]
    let cur_block_case_num = cur_block.count
    
    for i in 0..<cur_block_case_num{
        let cur_case_cnt = cur_block[i].count
        
        for j in 0..<(C-cur_case_cnt+1){
            var same = true
            let delt = field[j]-blocks[P-1][i][0]
            for k in 1..<cur_case_cnt{
                let tmp = field[j+k]-blocks[P-1][i][k]
                if delt != tmp{
                    same = false
                    break
                }
            }
            if same{
                res += 1
            }
        }
        
    }
    print(res)
}
