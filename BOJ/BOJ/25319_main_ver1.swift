//
//  25319_main_ver1.swift
//  BOJ
//
//  Created by 정은서 on 2022/07/15.
//

// 65% 정도에서 시간초과
/*

import Foundation

var actions = ["L", "U", "D", "R"]

let d_r = [0, -1, 1, 0]
let d_c = [-1, 0, 0, 1]

var map_info : [[String.Element?]] = []
var nick_info : [String.Element] = []
var N = 0, M = 0, len = 0
var visited : [Bool] = []

var queue: [Int] = []
var pos_record: [Int] = []

func get_input(){
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    N = input[0]
    M = input[1]
    len = input[2]
    
    for _ in 0..<N{
        let input_ = Array(readLine()!)
        map_info.append(input_)
    }
    
    let input__ = Array(readLine()!)
    nick_info += input__

    
}

func BFS_Action(start_pos: Int, nick_idx: Int)->String?{

    // start_pos: the current grid, idx: nickname's char idx, act_idx: actions idx
    // enqueue this current node
    queue.append(start_pos)
    visited[start_pos] = true
    
    var i = 0
    var j = 0
    
    var i_ = 0
    var j_ = 0
    
    var node = start_pos
    var next_node = start_pos
    
    while !queue.isEmpty {
        
        node = queue.first!
        queue.removeFirst()
        
        i = node/M
        j = node%M
        
        // available array is the list of where can the player go to
        var available:[Int] = []
        
        // i가 0이면 가장 윗줄이다. 가장 윗줄이 아니라면 Up 가능
        if i > 0   {
            available.append(1)
        }
        // i가 N-1이면 가장 아랫줄이다. 가장 아랫줄이 아니라면 Down 가능
        if i < N-1 {
            available.append(2)
        }
        
        // j가 0이면 가장 왼쪽이다. 가장 왼쪽이 아니라면 Left 가능
        if j > 0 {
            available.append(0)
        }
        // j가 M-1이면 가장 오른쪽이다. 가장 오른쪽이 아니라면 Right 가능
        if j < M-1 {
            available.append(3)
        }
        
        for act_idx in available {
            
            i_ = i + d_r[act_idx]
            j_ = j + d_c[act_idx]
            next_node = (i_ * M)+j_
            
            if !visited[next_node]{
                if map_info[i_][j_] == nick_info[nick_idx] {
                    let from_node = pos_record.last!
                    map_info[i_][j_] = nil
                    pos_record.append(next_node)
                    return get_command(from_i: from_node/M, from_j: from_node%M, to_i: i_, to_j: j_) + "P"
                }
                visited[next_node] = true
                queue.append(next_node)
            }
            
        }
    }
    
    // i: row idx, j: col idx of node
    
    return nil
    
}

func get_command(from_i: Int, from_j: Int, to_i: Int, to_j:Int)->String{
    var del_i = 0
    var del_j = 0
    var command_i: String
    var command_j: String
    
    del_i = to_i - from_i
    del_j = to_j - from_j

    if from_i <= to_i {
        command_i = String(repeating: "D", count: del_i)
    }else{
        command_i = String(repeating: "U", count: abs(del_i))
    }
    
    if from_j <= to_j {
        command_j = String(repeating: "R", count: del_j)
    }else{
        command_j = String(repeating: "L", count: abs(del_j))
    }
    
    return command_i + command_j
}

func init_visited_and_queue(){
    
    queue.removeAll()
    
    if !visited.isEmpty {
        visited.removeAll()
    }
    
    visited = [Bool](repeating: false, count: M*N)

}

func main_(){
    get_input()
    init_visited_and_queue()
    var nick_idx = 0
    
    var rein_count = 0
    var total:[String] = []
    
    pos_record.append(0)
    
    var cur_pos_idx = 0
    var cur_command = BFS_Action(start_pos: pos_record[cur_pos_idx], nick_idx: nick_idx)
    
    
    while cur_command != nil {
        cur_pos_idx += 1
        total.append(cur_command!)
        
        init_visited_and_queue()
        
        if nick_idx == len-1 {
            rein_count += 1
            nick_idx = 0
        }else{
            nick_idx += 1
        }
        
        cur_command = BFS_Action(start_pos: pos_record[cur_pos_idx], nick_idx: nick_idx)

    }
    
    var result:String
    let f_i = pos_record[(rein_count*len)]/M
    let f_j = pos_record[(rein_count*len)]%M
    let t_i = N-1
    let t_j = M-1
    
    if !total.isEmpty{
        result = total[0]
        
        for i in 1..<rein_count*len {
            result += total[i]
        }
        
        result += get_command(from_i: f_i, from_j: f_j, to_i: t_i, to_j: t_j)
    }else{
        result = get_command(from_i: f_i, from_j: f_j, to_i: t_i, to_j: t_j)
    }
    
    
    
    
    
    
    print("\(rein_count) \(result.count)\n\(result)")
    
}

main_()
*/
