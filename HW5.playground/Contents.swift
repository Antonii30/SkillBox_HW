import UIKit

protocol inventory{
    var weight: Int { get set }
    var volume: Int { get set }
    var magic: Bool { get set }
    var type: String { get set }
    func addObjects(in chest: Chest) -> String
}

class plant: inventory {
    var weight: Int
    var volume: Int
    var magic: Bool
    var type: String = "Plants"
    var heal: Int
    init(weight: Int, volume: Int, magic: Bool, heal: Int){
        self.weight = weight
        self.volume = volume
        self.magic = magic
        self.heal = heal
    }
    func addObjects(in chest: Chest) -> String{
        return "\(type) add in Chest"
    }
}

class weapon: inventory{
    var weight: Int
    var volume: Int
    var magic: Bool
    var type: String = "Weapons"
    var damage: Int
    init(weight: Int, volume: Int, magic: Bool, damage: Int){
        self.weight = weight
        self.volume = volume
        self.magic = magic
        self.damage = damage
    }
    func addObjects(in chest: Chest) -> String{
        return "\(type) add in Chest"
    }
}

class questItems: inventory{
    var weight: Int = 0
    var volume: Int = 0
    var magic: Bool = false
    var type: String = "Quest Item"
    func description() -> String {
        return "This is a quest item, you will need it during the game"
    }
    func addObjects(in chest: Chest) -> String{
        return "Quest item add in Chest"
    }
}

class Chest{
    func addObjects(objects: inventory...) -> String{
        var objectsInChest = ""
        for object in objects{
            objectsInChest += object.addObjects(in: self) + "; "
        }
        return objectsInChest
    }
}

let chest = Chest()
let podoroghnic = plant(weight: 10, volume: 10, magic: false, heal: 25)
let key = questItems()
let sword = weapon(weight: 25, volume: 12, magic: true, damage: 45)
chest.addObjects(objects: podoroghnic, key, sword)
////////////////////////////////////////////////////////////////
protocol Drawable{
    func draw(in map: Map) -> String
}


class Map{
    var result = "In Map: \n"
    func draw(objects: Drawable...){
        for object in objects{
            result += object.draw(in: self) + " \n"
        }
    }
    func view() -> String{
        return result
    }
}

    
class players: Drawable{
    var namePlayer: String
    init(namePlayer: String){
        self.namePlayer = namePlayer
    }
    func draw(in map: Map) -> String {
        return "Player: \(namePlayer)"
    }
}
    
enum monster: Drawable{
    case goblin, troll, dragon
    
    func draw(in map: Map) -> String {
        return "\(self)"
    }
}

class objectIntercative: Drawable{
    var object = "interactive items"
    func draw(in map: Map) -> String {
        return "\(object)"
    }
}

enum fixedElements: Drawable{
    case tree, bush, wall
    
    func draw(in map: Map) -> String {
        return "\(self)"
    }
}

let map = Map()
let player1 = players(namePlayer: "Anton")
let monsterGoblin = monster.goblin
let powerGrass = objectIntercative()
let tree = fixedElements.tree
map.draw(objects: player1, monsterGoblin, powerGrass, tree)
map.view()
////////////////////////////////////////////////////////////////
protocol carModel{
    var brand: String { get set }
    var picture: Int { get set }
}

protocol Equipment{
    var name: String { get set }
    var price: Int { get set }
    var colorCar: String { get set }
    var engine: Int { get set }
}

class Car3: carModel, Equipment{
    var brand: String = ""
    var picture: Int = 0
    
    var name: String = ""
    var price: Int = 0
    var colorCar: String = ""
    var engine: Int = 0

    enum Model{
        case Kia, Hundai, Mazda
    }
    
    enum Equipment {
        case cheap, medium, expensive
    }
    
    enum Color {
        case black, white, blue, green
    }
    
    enum engineCapacity{
        case oneHundred, twoHundred
    }
    func choosingСar(model: Model, equipment: Equipment, color: Color, engineCapacity: engineCapacity){
        switch model{
        case .Hundai:
            brand = "Hundai"
            picture = 1
            switch equipment {
                case .cheap:
                    name = "1"
                    price = 10
                    
                case .medium:
                    name = "2"
                    price = 100
                    
                case .expensive:
                    name = "3"
                    price = 1000
                }
        case .Kia:
            brand = "Kia"
            picture = 2
            switch equipment {
                case .cheap:
                    name = "11"
                    price = 10
                case .medium:
                    name = "22"
                    price = 100
                case .expensive:
                    name = "33"
                    price = 1000
            }
        case .Mazda:
            brand = "Mazda"
            picture = 3
            switch equipment {
                case .cheap:
                    name = "111"
                    price = 10
                case .medium:
                    name = "222"
                    price = 100
                case .expensive:
                    name = "333"
                    price = 1000
            }
        }
        switch color {
        case .black:
            colorCar = "Black"
        case .blue:
            colorCar = "Blue"
        case .green:
            colorCar = "Green"
        case .white:
            colorCar = "White"
        }
        switch engineCapacity {
        case .oneHundred:
            engine = 100
        case .twoHundred:
            engine = 200
        }
    }
}

let Mazda = Car3()
Mazda.choosingСar(model: .Mazda, equipment: .expensive, color: .white, engineCapacity: .twoHundred)
// Задание 4
//Лучше использовать наследования когда в другом классе есть функция которая нам нужна с небольшими изменениемями или уже есть готовые функции которые можно использовать в другом классе
// Задание 5
/*
let v1: A = D()
v1.a()
let v2: B = C() // мы не можем присвоить протоколу или расширению класс, потому что расширения пишется для класса
v2.c() // в B нет fun c()
let v3: C = D()
v3.d() // в С нет func d()
let v4: D = D()
v4.a()*/
