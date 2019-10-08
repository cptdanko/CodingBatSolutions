class RecursiveProblems {
    
    func test(limit: Int) {
        if limit != 0 {
            print(limit)
            test(limit: limit - 1)
        } else {
            return
        }
    }
    func factorial(n: Int) -> Int {
        if n > 1 {
            return n * (factorial(n: n-1))
        }
        return 1
    }
    func bunnyEars(n: Int) -> Int {
        if n == 1 {
            return 2
        }
        return 2 + (bunnyEars(n: n - 1))
    }
    func fibonacci(n: Int) -> Int {
        if n == 0 {
            return 0
        }
        if n == 1 {
            return 1
        }
        return fibonacci(n: n - 1) + fibonacci(n: n-2)
    }
    func bunnyEars2(n: Int) -> Int {
        if n == 1 {
            return 3
        }
        if n%2 == 0 {
            return 3 + bunnyEars2(n: n-1)
        } else {
            return 2 + bunnyEars2(n: n-1)
        }
    }
    func triangle(n: Int) -> Int {
        if n == 0 {
            return 0
        }
        return n + triangle(n: n-1)
    }
    func sumDigits(n: Int) -> Int {
        if n == 0 {
            return 0
        }
        return (n % 10) + sumDigits(n: (n / 10))
    }
    func count7(n: Int) -> Int {
        if n == 0 {
            return 0
        }
        if n % 10 == 7 {
            return 1 + count7(n: (n / 10))
        } else {
            return count7(n: (n / 10))
        }
    }
    func count8(n: Int) -> Int {
        if n == 0 {
            return 0
        }
        let rightDigit = n % 10
        if rightDigit == 8 && (n/10) % 10 == 8 {
            return 2 + count8(n: n/10)
        } else if rightDigit == 8 {
            return 1 + count8(n: n/10)
        } else {
            return count8(n: n/10)
        }
    }
    func powerN(base: Int, n: Int) -> Int {
        if n == 1 {
            return base
        }
        return base * powerN(base: base, n: (n-1))
    }
    func countX(str: String) -> Int {
        if str.isEmpty {
            return 0
        }
        let last = str.last!
        if last == "x" && last.isLowercase {
            return 1 + countX(str: String(str.dropLast()))
        } else {
            return countX(str: String(str.dropLast()))
        }
    }
    func countHi(str: String) -> Int {
        if str.isEmpty || str.count == 1 {
             return 0
        }
        let last = str.last!
        if last == "i" && last.isLowercase {
            let lastDropped = str.dropLast()
            let beforeLast = lastDropped.last!
            if beforeLast == "h" && beforeLast.isLowercase {
                return 1 + countHi(str: String(lastDropped.dropLast()))
            } else {
                return countHi(str: String(lastDropped.dropLast()))
            }
        } else {
            return countHi(str: String(str.dropLast()))
        }
    }
    func changeXY(str: String) -> String {
        if str.isEmpty {
            return ""
        }
        let last = str.last!
        if last.isLowercase && last == "x" {
            return changeXY(str: String(str.dropLast())) + "y"
        } else {
            return changeXY(str: String(str.dropLast())) + String(last)
        }
    }
    func changePi(str: String) -> String {
        if str.isEmpty {
            return ""
        }
        let last = str.last!
        let newStr = String(str.dropLast())
        if last.lowercased() == "i" {
            let secondLast = newStr.last!
            if secondLast.lowercased() == "p" {
                return changePi(str: String(newStr.dropLast())) + "3.14"
            } else {
                return changePi(str: newStr) + String(last)
            }
        } else {
            return changePi(str: newStr) + String(last)
        }
    }
    func noX(str: String) -> String {
        if str.isEmpty {
            return ""
        }
        let last = str.last!.lowercased()
        if last == "x" {
            return noX(str: String(str.dropLast()))
        } else {
            return noX(str: String(str.dropLast())) + last
        }
    }
    func array6(num: [Int], index: Int) -> Bool {
        if num.isEmpty {
            return false
        }
        if index == num.count {
            return false
        }
        if num[index] == 6 {
            return true
        } else {
            return array6(num: num, index: index + 1)
        }
    }
    func array11(nums: [Int], index: Int) -> Int {
        if nums.isEmpty || nums.count == index {
            return 0
        }
        if nums[index] == 11 {
            return 1 + array11(nums: nums, index: index + 1)
        } else {
            return array11(nums: nums, index: index + 1)
        }
    }
    func array220(nums: [Int], index: Int) -> Bool {
        if nums.isEmpty || nums.count < 2 {
            return false
        }
        let val = nums[index]
        let nextVal = nums[index + 1]
        if (val * 10) == nextVal {
            return true
        }
        return array220(nums: nums, index: index+1)
    }
    func allStar(str:String) -> String {
        if str.isEmpty {
            return ""
        }
        let last = String(str.last!)
        return allStar(str: String(str.dropLast())) + "*" + String(last)
    }
    func pairStar(str: String) -> String {
        if str.isEmpty {
            return ""
        }
        if str.count == 1 {
            return str
        }
        let last = str.last!.lowercased()
        let allButLast = String(str.dropLast())
        let secondLast = allButLast.last!.lowercased()
        if last == secondLast {
            return pairStar(str: allButLast) + "*" + last
        } else {
            return pairStar(str: allButLast) + last
        }
    }
    func endX(str: String) -> String {
        if str.isEmpty {
            return ""
        }
        let lastChar = str.last!
        if lastChar.isLowercase && lastChar == "x" {
            //move it to the end
            return endX(str: String(str.dropLast())) + String(lastChar)
        } else {
            return String(lastChar) + endX(str: String(str.dropLast()))
        }
    }
    func countPairs(str: String) -> Int {
        if str.isEmpty || str.count == 2 {
            return 0
        }
        let last = str.last!
        let allButLastCharStr = String(str.dropLast())
        let secLastIdx = allButLastCharStr.index(allButLastCharStr.startIndex, offsetBy: (allButLastCharStr.count - 2))
        let secondLastChar = allButLastCharStr[secLastIdx]
        if secondLastChar == last {
            return 1 + countPairs(str: allButLastCharStr)
        } else {
            return countPairs(str: allButLastCharStr)
        }
    }
    func countAbc(str: String) -> Int {
        if str.isEmpty || str.count < 3 {
            return 0
        }
        let lastChar = str.last!
        let allButLast = String(str.dropLast())
        let secondLastChar = allButLast.last!
        let thirdFromLast = String(allButLast.dropLast()).last!
        if (lastChar == "c" || lastChar == "a")
        && secondLastChar == "b"
        && (thirdFromLast == "a") {
            return 1 + countAbc(str: allButLast)
        } else {
            return countAbc(str: allButLast)
        }
    }
    func count11(str: String) -> Int {
        if str.isEmpty {
            return 0
        }
        
        let lastChar = str.last!
        let allButLast = String(str.dropLast())
        let scndLastChar = allButLast.last!
        if lastChar == "1" && scndLastChar == "1" {
            return 1 + count11(str: String(allButLast.dropLast()))
        } else {
            return count11(str: allButLast)
        }
    }
    func stringClean(str: String) -> String {
        if str.isEmpty {
            return ""
        }
        if str.count == 1 {
            return str
        }
        let lastChar = str.last!
        let allButLast = String(str.dropLast())
        let secondLastChar = allButLast.last!
        if lastChar == secondLastChar {
            return stringClean(str: String(allButLast.dropLast()) + String(lastChar))
        } else {
            return stringClean(str: allButLast) + String(lastChar)
        }
    }
    func countHi2(str: String) -> Int {
        if str.isEmpty || str.count < 3 {
            return 0
        }
        let lastChar = str.last!
        let allButLast = String(str.dropLast())
        let secondLast = allButLast.last!
        if lastChar.isLowercase,
            lastChar == "i",
            secondLast.isLowercase,
            secondLast == "h" {
            let allButLast2 = String(allButLast.dropLast())
            if allButLast2.last != "x" {
                return 1 + countHi2(str: allButLast)
            } else {
                return countHi2(str: allButLast)
            }
        } else {
            return countHi2(str: allButLast)
        }
    }
}

let rp = RecursiveProblems()
rp.test(limit: 5)

let f = rp.factorial(n: 5)
let be = rp.factorial(n: 3)
let fib = rp.fibonacci(n: 8)
let bn2 = rp.bunnyEars2(n: 4)
let tb = rp.triangle(n: 3)
let sd = rp.sumDigits(n: 59)
let c7 = rp.count7(n: 123 )
let c8 = rp.count8(n: 8818)
let pn = rp.powerN(base: 3, n: 3)
let xCount = rp.countX(str: "xhixX")
let countHi = rp.countHi(str: "xhixhix")
let countXY = rp.changeXY(str: "xxhixx")
let piReplace = rp.changePi(str: "pbPIypi")
let noX = rp.noX(str: "xx")
let arr6 = rp.array6(num: [1,23,4], index: 0)
let arr11 = rp.array11(nums: [1,2,11,4,4,11,11], index: 1)
let arr220 = rp.array220(nums: [1], index: 1)
let allStar = rp.allStar(str: "hello")
let pairStar = rp.pairStar(str: "aaa")
let endX = rp.endX(str: "xa")
let pairCount = rp.countPairs(str: "axada")
let countAbc = rp.countAbc(str: "abba")
let allButLast = rp.count11(str: "11abc1143")
let cleanedStr = rp.stringClean(str: "")
let countHi2 = rp.countHi2(str: "xhixhi")
