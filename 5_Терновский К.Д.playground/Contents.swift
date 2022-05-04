import UIKit
import Foundation

enum ChaingeInCar {
    case startEngine
    case stopEngine
    case openWind
    case closeWind
    case loading
    case unloading
    case sportEngine
    case trailerOnOff
}

protocol Car {
    var mark: String { get }
    var year: Int { get }
    var engine: Bool { get set }
    var windows: Bool { get set}
    var lights: Bool { get set }
    func doSomething()
}

extension Car {
    mutating func engineOnOff() {
        engine = !engine
        if engine == true {
            print("Двигатель запущен")
        } else {
            print("Двигатель заглушен")
        }
}
    mutating func windowsOnOff() {
        windows = !windows
        if windows == true {
            print("Окна открыты")
        } else {
            print("Окна закрыты")
        }
    }
    mutating func lightsOnOff() {
        lights = !lights
        if lights == true {
            print("Фары включены")
        } else {
            print("Фары выключены")
        }
    }
}

class sportCar: Car {
    var turboEngine: Bool
    var mark: String
    var year: Int
    var engine: Bool
    var windows: Bool
    var lights: Bool
    init(turboEngine: Bool, mark: String, year: Int, engine: Bool, windows: Bool, lights: Bool){
        self.turboEngine = turboEngine
        self.mark = mark
        self.year = year
        self.engine = engine
        self.windows = windows
        self.lights = lights
    }
    
    func doSomething() {
        turboEngine = !turboEngine
        if turboEngine == true{
            print("TUUUUURBBBBOOOO")
        } else {
            print("Турбо режим выключен")
        }
    }
    

}
extension sportCar: CustomStringConvertible {
    var description: String {
        return "Автомобиль марки: \(mark), \(year) года выпуска"
    }
}
extension trunkCar: CustomStringConvertible {
    var description: String {
        return "Автомобиль марки: \(mark), \(year) года выпуска"
    }
}

class trunkCar: Car {
    var removeTheBody: Bool
    var mark: String
    var year: Int
    var engine: Bool
    var windows: Bool
    var lights: Bool
    init(removeTheBody: Bool, mark: String, year: Int, engine: Bool, windows: Bool, lights: Bool){
        self.removeTheBody = removeTheBody
        self.mark = mark
        self.year = year
        self.engine = engine
        self.windows = windows
        self.lights = lights
    }
    
    func doSomething() {
        removeTheBody = !removeTheBody
        if removeTheBody == true{
            print("Прицеп закреплен")
        } else {
            print("Прицеп отсоединен")
        }
    }
    

}
var ferrari = sportCar(turboEngine: false, mark: "Ferrari", year: 2020, engine: true, windows: false, lights: false)
var kamaz = trunkCar(removeTheBody: false, mark: "KAMAZ", year: 1980, engine: false, windows: true, lights: false)

print(kamaz.description)
print(kamaz.doSomething())
print(kamaz.doSomething())
print(kamaz.engineOnOff())
print(kamaz.engineOnOff())

print(ferrari.description)
print(ferrari.lightsOnOff())
print(ferrari.doSomething())
print(ferrari.lightsOnOff())
print(ferrari.doSomething())
