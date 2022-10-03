//
//  3190.swift
//  BOJ
//
//  Created by 정은서 on 2022/09/28.
//

import Foundation

func vaild_check_3190(r: Int, c: Int, N: Int, grid: [[Int]])->Bool{
    if ((r<0 || r >= N) || (c<0 || c >= N)){
        return false
    }
    
    if (grid[r][c] == 1){
        return false
    }
    
    return true
}

func solve_3190(){
    var cnt = 0
    var snake = [[0,0]]
    var over = false
    
    var cur_dir = 0
    let dir = [0, 1, 2, 3]
    let dc = [1, 0, -1, 0]
    let dr = [0, 1, 0, -1]
    
    let N = Int(readLine()!)!
    var grid = [[Int]](repeating: [Int](repeating: 0, count: N), count: N)
    grid[0][0] = 1
    let K = Int(readLine()!)!
    for _ in 0..<K{
        let input = readLine()!.split(separator: " ").map{Int(String($0))!}
        grid[input[0]-1][input[1]-1] = 2
    }

    let L = Int(readLine()!)!
    var prev_t = 0
    for _ in 0..<L{
        let input = readLine()!.split(separator: " ")
        if !over{
            let duration = Int(input[0])!-prev_t
            for _ in 0..<duration{
                cnt+=1
                let head = snake.last!
                let cur_r = head[0]
                let cur_c = head[1]
                let new_r = cur_r + dr[cur_dir]
                let new_c = cur_c + dc[cur_dir]
                
                if vaild_check_3190(r: new_r, c: new_c, N: N, grid: grid){
                    if grid[new_r][new_c] == 2{
                        snake.append([new_r, new_c])
                        grid[new_r][new_c] = 1
                    }else{
                        snake.append([new_r, new_c])
                        let tail = snake.removeFirst()
                        grid[tail[0]][tail[1]] = 0
                        grid[new_r][new_c] = 1
                    }
                }else{
                    over = true
                    break
                }
            }
        }
        
        if String(input[1]) == "L"{
            cur_dir = (cur_dir+3)%4
        }else{
            cur_dir = (cur_dir+1)%4
        }
        prev_t = Int(input[0])!
    }
    
    while !over{
        cnt+=1
        let head = snake.last!
        let cur_r = head[0]
        let cur_c = head[1]
        let new_r = cur_r + dr[cur_dir]
        let new_c = cur_c + dc[cur_dir]
        
        if vaild_check_3190(r: new_r, c: new_c, N: N, grid: grid){
            if grid[new_r][new_c] == 2{
                snake.append([new_r, new_c])
                grid[new_r][new_c] = 1
            }else{
                snake.append([new_r, new_c])
                let tail = snake.removeFirst()
                grid[tail[0]][tail[1]] = 0
                grid[new_r][new_c] = 1
            }
        }else{
            over = true
        }
    }
    print("\(cnt)")
}
