import Foundation


// https://leetcode.com/problems/merge-strings-alternately/?envType=study-plan-v2&envId=leetcode-75
class Solution1 {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let totalCount = word1.count > word2.count ? word1.count : word2.count
        var finalString = ""

        var word1List: Array<String> {
            var list = [String]()
            word1.map({list.append(String($0))})
            return list
        }

        var word2List: Array<String> {
            var list = [String]()
            word2.map({list.append(String($0))})
            return list
        }


        for i in 0..<totalCount {
            print(i)
            if i < word1.count {
                finalString += word1List[i]
            }

            if i < word2.count {
                finalString += word2List[i]
            }
        }

        return finalString
    }
}

class Solution2 {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var finalString = ""
        
        //zip ~ same length
        finalString = String(zip(word1, word2).flatMap {([$0, $1])})
        
        if word1.count > word2.count {
            finalString += word1[word2.endIndex...]
        } else {
            finalString += word2[word1.endIndex...]
        }
        return finalString
    }
}

Solution2().mergeAlternately("ab", "cdefg")//3ms
//Solution1().mergeAlternately("ab", "cdefg") //15ms
