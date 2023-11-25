
import Foundation

//https://leetcode.com/problems/greatest-common-divisor-of-strings/description/?envType=study-plan-v2&envId=leetcode-75


class Solution {
    func gcdOfStringsWrong(_ str1: String, _ str2: String) -> String {
        
        let greatestCommon : String = str1.hasPrefix(str2) ? str2 : ""
        let array = greatestCommon.compactMap({(String($0))})
        var common = array.first ?? ""
        
        for (i, each) in array.enumerated() {
            if i == 0 {
            } else {
                if array[0] != each {
                    common.append(String(each))
                } else {
                    break
                }
            }
        }
        
        return common
    }
    
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        if str1 + str2 != str2 + str1 {
            return ""
        }
        
        let maxLength = gcd(str1.count, str2.count)
        return String(str1.prefix(maxLength))
        
    }
    
    // ⭐️최대공약수 Greatest Common Divisor
    func gcd(_ a : Int, _ b: Int) -> Int {
        //slower return b == 0 ? a : gcd(b, a % b)
        if b == 0 {
            return a
        } else {
            return gcd(b, a%b)
        }
    }
    
}

Solution().gcdOfStrings("ababababababababababab", "abab")




