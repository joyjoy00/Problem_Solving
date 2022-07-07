//
//  25318.swift
//  BOJ
//
//  Created by 정은서 on 2022/07/04.
//

/*
import Foundation

var opi_num: Int = 0
var T: [String] = []
var L: [Int] = []
var dp_p: [Double] = []
var dp_pl: [Double] = []
var sum_p: Double = 0
var sum_pl: Double = 0
var res: Double = 0

func main_(){
    //print("hell")
    get_input()
    if opi_num == 0 {
        print(0)
        return
    }
    set_dp()
    
    print(Int(get_result()))
}

// input값 입력받기
func get_input(){
    
    var startIdx: String.Index
    var midIdx: String.Index
    var midIdx2: String.Index
    
    guard let tmp_input = readLine() else{
        return
    }
    
    opi_num = Int(tmp_input)!
    
    if opi_num == 0 {
        return
    }
    
    for _ in 1...opi_num{
        if let tmp_input = readLine(){
            //print(tmp_input)
            startIdx = tmp_input.index(tmp_input.startIndex, offsetBy: 0)
            midIdx = tmp_input.index(tmp_input.startIndex, offsetBy: 18)
            midIdx2 = tmp_input.index(tmp_input.startIndex, offsetBy: 20)
            
            let range = midIdx2...
            T.append(String(tmp_input[startIdx ... midIdx]))
            L.append(Int(tmp_input[range])!)
        }
    }
}

func substring(s: Int, t: Int, A: String)->String{
    let sIdx = A.index(A.startIndex, offsetBy: 0)
    let tIdx = A.index(A.startIndex, offsetBy: t)
    return String(A[sIdx...tIdx])
    
}

// 두 시간간의 차 구하기
func sub_t(i: Int ,N : Int)->Double{
    //print("sub i: \(i)")
    if N == 1 {
        return 0
    }else{
        
        if let prev = toDateFormat(st: T[i]){
            if let cur = toDateFormat(st: T[N]){
                
//                    let prev_cal = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: prev)
//                    let cur_cal = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: cur)
//////
//                    let del_y = Calendar.current.dateComponents([.year], from: prev, to: cur).year!
//                    let del_M = Calendar.current.dateComponents([.month], from: prev, to: cur).month!
                let delt = cur.timeIntervalSince(prev)
                //print("prev_cal:\(prev_cal), cur_cal:\(cur_cal), del:\(delt/(60*60*24)), del_y:\(del_y), del_M:\(del_M)")
                
                return delt
    
            }else{
                return 0
            }
        }else{
            return 0
        }
    }
}

//p_i 구하기
func set_dp(){
    for k in 1...opi_num{
        let p = max(pow(0.5, (sub_t(i:k, N: opi_num)/365)), pow(0.9, Double(opi_num)))
        
        //print("sub_t: \(sub_t(i:k, N: opi_num)), P: \(p)")
        dp_p.append(p)
        dp_p.append(p*Double(L[k]))
        sum_p += p
        sum_pl += p*Double(L[k])
    }
}

func get_result()->Double{
    return round(sum_pl/sum_p)
}

func toDateFormat(st: String)->Date!{
    let format = DateFormatter()
    format.dateFormat = "yyyy-MM-dd HH:mm:ss"
    if let date = format.date(from: st){
        return date
    }else{
        return nil
    }
}

// set the array of index 0
T.append("")
L.append(0)
dp_p.append(0)
dp_pl.append(0)
main_()

*/

