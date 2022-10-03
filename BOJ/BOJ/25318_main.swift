//
//  25318.swift
//  BOJ
//
//  Created by 정은서 on 2022/07/04.
//

/*
import Foundation

var opi_num: Int = 0

var y: [Double] = [0]
var M: [Double] = [0]
var d: [Double] = [0]
var h: [Double] = [0]
var m: [Double] = [0]
var s: [Double] = [0]

var L: [Int] = [0]
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

    guard let tmp_input = readLine() else{
        return
    }
    
    opi_num = Int(tmp_input)!
    
    if opi_num == 0 {
        return
    }
    
    for _ in 1...opi_num{
        let tmp_input = readLine()!.split(separator: " ")

        var tmp = tmp_input[0].split(separator: "/").map{Double(String($0))}
        y.append(tmp[0]!)
        M.append(tmp[1]!)
        d.append(tmp[2]!)
        
        tmp = tmp_input[1].split(separator: ":").map{Double(String($0))}
        h.append(tmp[0]!)
        m.append(tmp[1]!)
        s.append(tmp[2]!)
        
        L.append(Int(tmp_input[2])!)
        
    }
}

// 두 시간간의 차 구하기
func sub_t(i: Int ,N : Int)->Double{
    //print("sub i: \(i)")
    if N == 1 {
        return 0
    }else{
        let s1 = s[N]
        let s2 = s[i]
        let m1 = m[N]
        let m2 = m[i]
        let h1 = h[N]
        let h2 = h[i]
        let d1 = d[N]
        let d2 = d[i]
        let M1 = M[N]
        let M2 = M[i]
        let y1 = y[N]
        let y2 = y[i]
        
        var d1_1 = ((((s1/60)+m1)/60)+h1/24)+d1
        var total_1 = y1
        
        
        var d2_1 = ((((s2/60)+m2)/60)+h2/24)+d2
        var total_2 = y2
       
        if y1 == 2020 {
            for i in 1..<Int(M1){
                if i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12 {
                    d1_1 += 31
                }else if i == 2 {
                    d1_1 += 29
                }else{
                    d1_1 += 30
                }
            }
            
            total_1 = (y1-1)*365 + d1_1
            
        }else{
            for i in 1..<Int(M1){
                
                if i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12 {
                    d1_1 += 31
                }else if i == 2 {
                    
                    d1_1 += 28
                }else{
                    d1_1 += 30
                }
            }
            if y1-1 >= 2020 {
                total_1 = (y1-2) * 365 + d1_1 + 366
            }
            total_1 = (y1-1)*365 + d1_1
        }
        
        
        if y2 == 2020 {
            for i in 1..<Int(M2){
                if i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12 {
                    d2_1 += 31
                }else if i == 2 {
                    d2_1 += 29
                }else{
                    d2_1 += 30
                }
            }
            
            total_2 = y2*365 + d2_1
            
        }else{
            for i in 1..<Int(M2){
                if i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12 {
                    print("? \(i)")

                    d2_1 += 31
                }else if i == 2 {
                    print("h? \(i)")
                    d2_1 += 28
                }else{
                    d2_1 += 30
                }
            }
            if y2-1 >= 2020 {
                total_2 = (y2-2)*365 + d2_1 + 366
            }
            total_2 = (y2-1)*365 + d2_1
        }
        
        
        //print("d: \(d1_1), \(d2_1)")
        let sub = (total_1 - total_2)/365
        print("\(total_1 - total_2) , \(sub)")
        return Double(sub)
    }
}

//p_i 구하기
func set_dp(){
    for k in 1...opi_num{
        let p = max(pow(0.5, (sub_t(i:k, N: opi_num))), pow(0.9, Double(opi_num)))
        sum_p += p
        sum_pl += p*Double(L[k])
    }
}

func get_result()->Double{
    return round(sum_pl/sum_p)
}

main_()

*/
