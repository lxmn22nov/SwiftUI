// Stored Properties:

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
// "rangeOfThreeItems: is declared as a variable marked with "var" keyword.
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
print(rangeOfThreeItems.firstValue)

rangeOfThreeItems.firstValue = 6
print(rangeOfThreeItems.firstValue)

// "rangeOfFourItems" is declared as a constant marked with "let" keyword.
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
print(rangeOfFourItems.firstValue)

// rangeOfFourItems.firstValue = 6
