// Add your code below:
import Foundation

var arrStr : [String] = []

while let line = readLine() {
    arrStr.append(line)
}

func swap(strings: inout [String], firstIndex: Int, secondIndex: Int) {
    var swapCount : Int = 0, swapTotal : Int = 0
    for passCount in 0 ..< strings.count {
        for value in 1 ..< strings.count - 1 where passCount != 0 {
            if strings[value - 1] > strings[value] {
                let biggerValue = strings[value - 1]
                strings[value - 1] = strings[value]
                strings[value] = biggerValue
                swapCount += 1
            }
        }
        swapTotal += swapCount
        if (swapCount == 0) && (passCount != 0) {
            break;
        }
        swapCount = 0
    }
    for line in strings {
        print(line)
    }
}

swap(strings: &arrStr, firstIndex: 0, secondIndex: 1)
