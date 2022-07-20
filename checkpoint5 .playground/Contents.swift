import Cocoa
import Darwin
import Foundation

// this lucky numbers is from hackingwithswift.com

/*
func jobNumbers(fetch getNumbers : [Int], filter: ([Int]) -> Bool, sort: ([Int]) -> Bool, map: ([Int]) ->  [String]){
    filter()
    sort(getNumbers)
    map(getNumbers)
    print(getNumbers)
}

jobNumbers(fetch: luckyNumbers){
    if 0 % 2 == 0{
        return true
    }else{
        return false
    }
}sort: {
    
} map: {
    "\($0) is a lucky number."
}
*/

// trying again, fresh start.

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func jobDone(getNumbers: [Int]){
    
    let result = getNumbers.filter {
        if $0 % 2 == 0{
            return false
        }else{
            return true
        }
    }.sorted(by: {s1,s2 in s1<s2}).map{
        "\($0) is a lucky number."
    }
    for i in result{
        print(i)
    }
}

jobDone(getNumbers: luckyNumbers)




