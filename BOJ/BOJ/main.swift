// 17299

import Foundation

func main(){
    
    let N = Int(readLine()!)!
    var ans = [Int](repeating: -1, count: N)
    var dict:[Int:Int] = [:]
    var stack:[Int] = []
    let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    for i in 0..<N{
        if dict.keys.contains(arr[i]) {
            dict[arr[i]]! += 1
        }else{
            dict[arr[i]] = 1
        }
    }

    for i in 1...N{
        var exist = false
        while (!stack.isEmpty) && (!exist) {
            let last = stack.last!
            if dict[last]! <= dict[arr[N-i]]!{
                stack.popLast()
            }else{
                ans[N-i] = last
                exist = true
            }
        }
        stack.append(arr[N-i])
    }
    
    for e in ans{
        print(e, terminator: " ")
    }
}



main()
