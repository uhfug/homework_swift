import UIKit
import Foundation

enum ChaingeInCar {
    case startEngine
    case stopEngine
    case openWind
    case closeWind
    case loading
    case unloading
    
}
struct sportCar {
    let mark: String
    let year: Int
    let allTrunkVolume: Double
    var engine: Bool
    var windows: Bool
    var usedTrunkVolume: Double
    
    mutating func doSomething(mode: ChaingeInCar){
        switch mode{
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
        }
    }
    
}

struct trunkCar {
    let mark: String
    let year: Int
    let allTrunkVolume: Double
    var engine: Bool
    var windows: Bool
    var usedTrunkVolume: Double
    
    mutating func doSomething(mode: ChaingeInCar){
        switch mode{
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
        }
    }
}



var fordCar = sportCar(mark: "Ford",year: 1998,allTrunkVolume: 350,engine: true,windows: false,usedTrunkVolume: 343)
var kamazCar = trunkCar(mark: "KAMAZ",year: 1978,allTrunkVolume: 2000,engine: true,windows: true,usedTrunkVolume: 746)

print(fordCar.doSomething(mode: .unloading))
print(kamazCar.doSomething(mode: .loading))
print(fordCar.doSomething(mode: .startEngine))
print(kamazCar.doSomething(mode: .startEngine))
print(fordCar.doSomething(mode: .openWind))
print(kamazCar.doSomething(mode: .closeWind))

