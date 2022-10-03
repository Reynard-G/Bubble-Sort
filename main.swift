// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["test", "bob", "unknown", "null"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

// Add your code below:
var strings : [String] = unsortedStrings

func swap(strings: inout [String], firstIndex: Int, secondIndex: Int) {
    var swapCount : Int = 0, swapTotal : Int = 0
    for passCount in 0 ... strings.count {
        for value in 1 ... strings.count - 1 where passCount != 0 {
            if strings[value - 1] > strings[value] {
                let biggerValue = strings[value - 1]
                strings[value - 1] = strings[value]
                strings[value] = biggerValue
                swapCount += 1
            }
        }
        swapTotal += swapCount
        print("Pass: \(passCount), Swaps: \(swapCount)/\(swapTotal), Array: \(strings)")
        if (swapCount == 0) && (passCount != 0) {
            break;
        }
        swapCount = 0
    }
}
swap(strings: &strings, firstIndex: 0, secondIndex: 0) //No variables were created for firstIndex & secondIndex
