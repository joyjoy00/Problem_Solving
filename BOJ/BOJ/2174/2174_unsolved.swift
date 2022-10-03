//
//  2174.swift
//  BOJ
//
//  Created by 정은서 on 2022/09/22.
//

import Foundation

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
let dir = ["E":0, "S":1, "W":2, "N":3]

let input1 = readLine()!.split(separator: " ").map{Int(String($0))!}
let A = input1[0]
let B = input1[1]

var grid = [[[Int]]](repeating: [[Int]](repeating: [-1, -1], count: A+1), count: B+1)

let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}
let N = input2[0]
let M = input2[1]
var robot = [[Int]](repeating: [-1, -1], count: N+1)

func solve_2174(){
    

    var crash = false
    
    for i in 0..<N{
        let input3 = readLine()!.split(separator: " ")
        let x = Int(input3[0])!
        let y = B-Int(input3[1])!+1
        let d = dir[String(input3[2])]!
        
        grid[y][x] = [i+1, d]
        robot[i+1] = [x, y]
    }
    
    for _ in 0..<M{
        let input4 = readLine()!.split(separator: " ")
        let robot_n = Int(input4[0])!
        let order = String(input4[1])
        let cnt = Int(input4[2])!
        
        let cur_x = robot[robot_n][0]
        let cur_y = robot[robot_n][1]
        let cur_dir = grid[cur_y][cur_x][1]
        
        if order == "F"{
            let next_x = cur_x + (dx[cur_dir]*cnt)
            let next_y = cur_y + (dy[cur_dir]*cnt)
            
            robot[robot_n] = [next_x, next_y]
            grid[cur_y][cur_x] = [-1, -1]
            
            if crash_wall(x: next_x, y: next_y){
                print("Robot \(robot_n) crashes into the wall")
                crash = true
            }else{
                
                let crash_other_val = crash_other(x1: cur_x, y1: cur_y, x2: next_x, y2: next_y)
                
                if crash_other_val[0] != -1{
                    print("Robot \(robot_n) crashes into robot \(grid[crash_other_val[1]][crash_other_val[0]][0])")
                    crash = true
                }
            }

            if crash != true{
                grid[next_y][next_x] = [robot_n, cur_dir]
            }else{
                break
            }
            
        }else{
            var next_dir:Int
            if order == "R"{
                next_dir = (cur_dir + cnt) % 4
            }else{
                next_dir = 4 - (abs(cur_dir-cnt)%4)
            }
            
            grid[cur_y][cur_x][1] = next_dir
        }
    }
    
    if crash == false{
        print("OK")
    }
}

func crash_wall(x: Int, y: Int)->Bool{
    if (x<=0||x>A)||(y<=0||y>B){
        return true
    }
    
    return false
}

func crash_other(x1: Int, y1: Int, x2: Int, y2: Int)->[Int]{
    if abs(x1-x2) == 0{
        for i in min(y1, y2)...max(y1, y2){
            if grid[i][x1][0] != -1 {
                return [x1, i]
            }
        }
    }else{
        for i in min(x1, x2)...max(x1, x2){
            if grid[y1][i][0] != -1 {
                return [i, y1]
            }
        }
    }
    
    return [-1, -1]
}
