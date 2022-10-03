// #19637
//
//import Foundation
//
//func main_(){
//    let input_ = readLine()!.split(separator: " ").map{Int(String($0))!}
//    
//    let N = input_[0]
//    let M = input_[1]
//    
//    var titles : [[String]] = []
//    var userPower : [[Int]] = []
//    var index = [Int](repeating:0, count: N)
//    
//    for _ in 0..<N{
//        let input = readLine()!.components(separatedBy: " ")
//        titles.append(input)
//    }
//
//    // MARK: sort
//    for i in 0..<M{
//        let input = Int(readLine()!)!
//        userPower.append([i, input])
//    }
//    
//    let sortedPower = userPower.sorted{$0[1]<$1[1]}
//    // MARK: BinarySearch
//    
//    var low = 0
//    var high = sortedPower.count-1
//    var mid = (low+high) / 2
//
//    for t in 0..<N{
////        let cur_title = titles[t][0]
//        let cur_power = Int(titles[t][1])!
//
//        while(low <= high){
//            if sortedPower[mid][1] > cur_power{
//                high = mid - 1
//            }else{
//                low = mid + 1
//            }
//            mid = (low+high)/2
//        }
//
//        index[t] = high
//
//        low = high+1
//        high = sortedPower.count-1
//        mid = (low+high)/2
//    }
//
//    // MARK: assign title with original order
//    for t in 0..<N{
//
//        if index[t] >= 0 {
//            if (t>0 && index[t] != index[t-1]){
//                for i in index[t-1]+1...index[t]{
//                    userPower[sortedPower[i][0]].append(t)
//                }
//            }else if t==0{
//                for i in 0...index[t]{
//                    userPower[sortedPower[i][0]].append(t)
//                }
//            }
//        }
//    }
//    
//    // MARK: print result
//    
//    for i in 0..<M{
//        print(titles[userPower[i][2]][0])
//    }
//
//}
//
//
//    
//main_()
