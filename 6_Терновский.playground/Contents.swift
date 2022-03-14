import UIKit
import Foundation


struct numberPerNumber<queue> {
    var unsortedArray: Array <queue>
    subscript(index: Int) -> queue? {
        get {
            switch index {
            case 0..<unsortedArray.count: return unsortedArray[index]
            default: return nil
            }
        }
    }
    mutating func pushNumbers(_ element: queue) -> Array<queue> {
            unsortedArray.append(element)
        print(unsortedArray)
        return unsortedArray
        }
    mutating func delLast() -> queue { return unsortedArray.removeLast() }
    mutating func delFirst() -> queue { return unsortedArray.removeFirst() }
    
    }

var example = numberPerNumber(unsortedArray: [67, 894, 293, 43, 434])
example.pushNumbers(32).self[5]
example.delFirst()
example.delLast()
example.pushNumbers(4)
print(example[9])

