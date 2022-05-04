import UIKit
import Foundation

enum wrong: Error {
    case wrongName
}

class Philosofy{
    var philosophers = [
        "Карл Маркс" : "Капитал",
        "Фридрих Ницше" : "Антихрист",
        "Эрих Фромм" : "Бегство от свободы"
    ]
    
    func philosophyBoook(atName name: String) -> String?{
        return philosophers[name]
    }
    
    func avarageLenghtName() -> Int {
        var totalLenghtName = 0
        guard philosophers.count > 1 else {return 0}
        for (_, va) in philosophers {
            totalLenghtName += va.count
        }
        return totalLenghtName / philosophers.count
    }
    func takeName(philName name: String) throws -> String? {
        guard let item = philosophers[name] else {
            throw wrong.wrongName
        }
        return name
    }
   
}

let example = Philosofy()
example.philosophyBoook(atName: "Эрих Фромм")
example.philosophyBoook(atName: "Marks")
example.avarageLenghtName()
try example.takeName(philName: "Эрих Фромм")
try example.takeName(philName: "Эр Фромм")

