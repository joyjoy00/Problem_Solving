/*
import Foundation

var graph:[Int] = []
var visited:[Bool] = []
var cycles = Set<Int>()
var tmp_set = Set<Int>()

func HowManyLoner(total_num: Int)->Int{
    
    var count = 0
    
    for i in 1..<total_num+1{

        if !cycles.contains(i){
            
            visited = [Bool](repeating: false, count: total_num+1)
            tmp_set.removeAll()
            tmp_set.insert(i)
            if !DFS(start: i, cur: i){
                count += 1
            }
        }
        
    }
    return count
}

func DFS(start: Int, cur: Int)->Bool{
    
    visited[cur] = true
    
    let next_node = graph[cur]
    
    if !visited[next_node]{
        print("ehew")
        tmp_set.insert(next_node)
        print("i: \(next_node) \(tmp_set)")

        return DFS(start: start, cur: next_node)
    }else{
        // 이미 방문한 노드인데, start node와 cur node가 같다면 cycle
        if start == cur{
            print("i: \(cur) \(tmp_set)")
            cycles = cycles.union(tmp_set)
            print(cycles)
            return true
        }else{
            // 이미 방문한 노드인데, start node와 cur node가 다르다면 적어도 해당 노드를 포함하는 사이클은 존재하지 않는다.
            
            return false
        }
    }
    
    
    
}

func main_(){
    
    if let tc = Int(readLine()!){
        for _ in 0..<tc{
            graph.removeAll()
            if let num = Int(readLine()!){
                
                let input = readLine()!.split(separator: " ").map{Int(String($0))!}
                graph.append(0)
                graph += input
                
                print("\(HowManyLoner(total_num: num))")
            }
        }
    }
    
}

main_()
*/
