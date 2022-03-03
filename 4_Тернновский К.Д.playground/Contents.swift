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

class Car {
    let mark: String
    let year: Int
    let allTrunkVolume: Double
    var engine: Bool
    var windows: Bool
    var usedTrunkVolume: Double
    
    init(mark: String, year: Int, allTrunkVolum: Double, engine: Bool, windows: Bool, usedTrunkVolume: Double){
        self.mark = mark
        self.year = year
        self.allTrunkVolume = allTrunkVolum
        self.engine = engine
        self.windows = windows
        self.usedTrunkVolume = usedTrunkVolume
    }
    func doSomething() {
        
    }
}

class sportCar: Car {
    let fromZeroToHandred: Double
    init(mark: String, year: Int, allTrunkVolum: Double, engine: Bool, windows: Bool, usedTrunkVolume: Double, fromZeroToHandred: Double) {
        self.fromZeroToHandred = fromZeroToHandred
        super .init(mark: mark, year: year, allTrunkVolum: allTrunkVolum, engine: engine, windows: windows, usedTrunkVolume: usedTrunkVolume)
    }
    func doSomething(mode:ChaingeInCar) {
        switch mode{
        case .sportEngine:
            print("Спортивный режим включен")
        case .startEngine:
            self.engine = true
            print("Двигатель запущен")
        case .stopEngine:
            self.engine = false
            print("Двигатель заглушен")
        case .openWind:
            self.windows = true
            print("Окна открыты")
        case .closeWind:
            self.windows = false
            print("Окна закрыты")
        case .loading:
            print("Погрузка завершена, свободного метса осталось \(self.allTrunkVolume - self.usedTrunkVolume)")
        case .unloading:
            print("Разгрузка завершена, общий объем разгруженых материалов \(self.usedTrunkVolume)")
        case .trailerOnOff:
            print("Прицеп отсусвует")
        }
    }
    
}

class trunkCar: Car{
    var removeTheBody: Bool
    init(mark: String, year: Int, allTrunkVolum: Double, engine: Bool, windows: Bool, usedTrunkVolume: Double, removeTheBody: Bool) {
        self.removeTheBody = removeTheBody
        super .init(mark: mark, year: year, allTrunkVolum: allTrunkVolum, engine: engine, windows: windows, usedTrunkVolume: usedTrunkVolume)
    }
    func doSomething(mode: ChaingeInCar) {
        switch mode{
        case .trailerOnOff:
            removeTheBody = false
            print("Прицеп отсоединен")
        case .startEngine:
            self.engine = true
            print("Двигатель запущен")
        case .stopEngine:
            self.engine = false
            print("Двигатель заглушен")
        case .openWind:
            self.windows = true
            print("Окна открыты")
        case .closeWind:
            self.windows = false
            print("Окна закрыты")
        case .loading:
            print("Погрузка завершена, свободного метса осталось \(self.allTrunkVolume - self.usedTrunkVolume)")
        case .unloading:
            print("Разгрузка завершена, общий объем разгруженых материалов \(self.usedTrunkVolume)")
        case .sportEngine:
            print("Спорт режим отсутствует")
        }
    }
}

var fordCar = Car(mark: "Ford",year: 1998,allTrunkVolum: 350,engine: true,windows: false,usedTrunkVolume: 343)
var fordCar2 = sportCar(mark: "Ford",year: 1998,allTrunkVolum: 350,engine: true,windows: false,usedTrunkVolume: 343, fromZeroToHandred: 3)
var bigCar = trunkCar(mark: "Kamaz", year: 1988, allTrunkVolum: 2000, engine: true, windows: true, usedTrunkVolume: 1223, removeTheBody: true)

print(fordCar2.fromZeroToHandred, fordCar2.usedTrunkVolume, fordCar2.windows, fordCar2.allTrunkVolume, fordCar2.engine, fordCar2.mark, fordCar2.year)
print(fordCar2.doSomething(mode: .sportEngine))
print(fordCar2.doSomething(mode: .trailerOnOff))

print(bigCar.doSomething(mode: .trailerOnOff))
print(bigCar.doSomething(mode: .sportEngine))

print(fordCar.usedTrunkVolume)


