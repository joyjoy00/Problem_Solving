/* 실패
import Foundation

func find_max(x: Int, y: Int)-> (val: Int, pos: Int) {
    if x >= y {
        return (x, 0)
    }else{
        return (y, 1)
    }
}

func main_(){
    
    let tc = Int(readLine()!)!
    
    for _ in 0..<tc{
        let N = Int(readLine()!)!

        let input1 = readLine()!.split(separator: " ").map{Int(String($0))!}
        let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}
        
        var sticker:[[Int]] = []
        sticker.append(input1)
        sticker.append(input2)
        let res = find_max(x: sticker[0][0], y: sticker[1][0])
        
        var DP_val = [res.val]
        var DP_pos = [res.pos]
        
        if N>1 {
            var candidate_pos = abs(DP_pos[0]-1)
            
            if DP_val[0]+sticker[candidate_pos][1] >= sticker[candidate_pos][0]+sticker[DP_pos[0]][1] {
                DP_val.append(DP_val[0]+sticker[candidate_pos][1])
                DP_pos.append(candidate_pos)
            }else{
                DP_val.append(sticker[candidate_pos][0]+sticker[DP_pos[0]][1])
                DP_pos.append(DP_pos[0])
            }
            
        }
        print(DP_val)
        print(DP_pos)

        
        if N>2{
            for i in 2..<N{
                var candidate_pos = abs(DP_pos[i-1]-1)
                if DP_val[i-1]+sticker[candidate_pos][i] >= DP_val[i-2]+sticker[DP_pos[i-1]][i] {
                    DP_val.append(DP_val[i-1]+sticker[candidate_pos][i])
                    DP_pos.append(candidate_pos)
                }else{
    
                    DP_val.append(DP_val[i-2]+sticker[DP_pos[i-1]][i])
                    DP_pos.append(DP_pos[i-1])
                }
            }
        }
        print(DP_val)
        print(DP_pos)
        
        print("\(DP_val[N-1])")
    }
    
}

main_()
*/
