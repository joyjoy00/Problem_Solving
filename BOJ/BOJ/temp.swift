/*
import Foundation

var police : [[Int]] = []

func main_(){
    let N = Int(readLine()!)!
    
    for _ in 0..<N{
        let pos = readLine()!.split(separator: " ").map{Int(String($0))!}
        police.append(pos)
        
        //print(police)
    }
    
    let thief = readLine()!.split(separator: " ").map{Int(String($0))!}
    var escapable = false
    for i in 0...3 {
        escapable = check(dir: i, thief: thief)
        if escapable {
            break
        }
    }
    
    if escapable {
        print("YES")
    }else{
        print("NO")
    }
    
    
}

func check(dir: Int, thief: [Int]) -> Bool{
    
    var can = true
    // up
    if dir == 0 {
        
        for i in police{
            let x = getDist(x1: i[0], x2: thief[0])
            let y = getDist(x1: i[1], x2: thief[1])
            //print("X: \(x) Y: \(y)")
            
            if (y>0) && (y >= abs(x)) {
                can = false
                return can
            }
        }
        
    }else if dir == 1{
        // down
        for i in police{
            let x = getDist(x1: i[0], x2: thief[0])
            let y = getDist(x1: i[1], x2: thief[1])
            //print("X: \(x) Y: \(y)")
            
            if (y<0) && (abs(y) >= abs(x)) {
                can = false
                return can
            }
        }
    }else if dir == 2{
        // left
        for i in police{
            let x = getDist(x1: i[0], x2: thief[0])
            let y = getDist(x1: i[1], x2: thief[1])
            //print("X: \(x) Y: \(y)")
            
            if (x<0) && (abs(y) <= abs(x)) {
                can = false
                return can
            }
        }
    }else{
        // right
        for i in police{
            let x = getDist(x1: i[0], x2: thief[0])
            let y = getDist(x1: i[1], x2: thief[1])
            //print("X: \(x) Y: \(y)")
            
            if (x>0) && (abs(y) <= abs(x)) {
                can = false
                return can
            }
        }
    }
    
    return can
}

func getDist(x1: Int, x2: Int) -> Int{
    return x1-x2
}
main_()
*/
