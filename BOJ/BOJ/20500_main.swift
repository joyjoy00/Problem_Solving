/*
// 20500: Ezreal 여눈부터 가네 ㅈㅈ
import Foundation

var dp = [[Int]](repeating: [], count: 3)

func main_(){
    let N = Int(readLine()!)!
    
    dp_set(N: N)

    // 3으로 나눈 나머지가 1이어야 첫번째 자리의 5까지 더했을 때 3으로 나누어 떨어진다.
    print(dp[1][N-1])
    
}

func dp_set(N: Int){
    
    // dp[i][0] // 첫번째 자릿수는 5로 고정
    dp[0].append(0)
    dp[1].append(0)
    dp[2].append(1)
    
    // dp[i][1]
    dp[0].append(0)
    dp[1].append(1)
    dp[2].append(1) // 5 fix

    if N>2{
        for i in 2...N-1{
            dp[0].append((dp[1][i-1]+dp[2][i-1])%1000000007)
            dp[1].append((dp[0][i-1]+dp[2][i-1])%1000000007)
            dp[2].append((dp[1][i-1]+dp[0][i-1])%1000000007)
        }
    }

}

main_()
*/
