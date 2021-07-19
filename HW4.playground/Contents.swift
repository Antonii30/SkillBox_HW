import UIKit

// 2 задание
struct Cards{
    
    enum Suit: Character {
        case spades = "♠", hearts = "♡", diamonds = "♢", clubs = "♣"
    }
    
    enum Rank: Int {
        case two = 2, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace
    }
    
    let rank: Rank
    let suit: Suit
}

let tenSpades = Cards(rank: .ten, suit: .spades)
let twoDiamonds = Cards(rank: .two, suit: .diamonds)

// Задание 3
// rawValue может вернуть любой тип значения либо nil

// Задание 4

class Figure{
    
    struct Circle {
        var coordinates: (x: Int, y: Int)
        var radius: Float
        var perimeter: Float {
            get {
                return 2.0 * 3.14 * radius
            }
            set(newPerimeter) {
                radius = newPerimeter / (2 * 3.14)
            }
        }
    }
    
    struct Rectangle {
        var coordinates: (x1: Int, y1: Int, length: Int, width: Int) // верхняя левая точка прямоугольника
        mutating func perimeter() -> Int{
            return (coordinates.length + coordinates.width) * 2
        }
        mutating func coordinatesCalc() -> ((Int,Int),(Int,Int),(Int,Int),(Int,Int)){
            let x2 = coordinates.x1 + coordinates.length
            let y2 = coordinates.y1
            let x3 = coordinates.x1
            let y3 = coordinates.y1 - coordinates.width
            let x4 = x2
            let y4 = y3
            let fullCoordinates = ((coordinates.x1,coordinates.y1),(x2,y2),(x3,y3),(x4,y4))
            return fullCoordinates
        }
    }
}

var circle = Figure.Circle(coordinates: (x: 4, y: 5), radius: 6.5)
circle.perimeter
circle.radius = 4
circle.radius

var rectangle = Figure.Rectangle(coordinates: (x1: 5, y1: 4, length: 3, width: 4))
rectangle.perimeter()
rectangle.coordinatesCalc()
rectangle.coordinates.x1 = 6
rectangle.coordinatesCalc()

// Задание 5
/*
 1 потому что в классе name создан как константа
 3 в структуре name создан как константа
 4 переменная которой мы хотим присвоить другое имя let
 5 строка тоже самое что и 1
 7 потому что в классе name создан как константа
 */

// 6 Задание

class Cars {
    var brandCars: String
    var model: String
    var carsClass: String
    var horsePower: Int
    var numberOfSeats: Int
    init(brandCars: String, model: String, carsClass: String, horcePower: Int) {
        self.brandCars = brandCars
        self.model = model
        self.carsClass = carsClass
        self.horsePower = horcePower
        self.numberOfSeats = 5
    }
}

var PorsheCayene = Cars(brandCars: "Porshe", model: "Cayene", carsClass: "C", horcePower: 320)

// Задание 7

class Calculator {
    var a: Double
    var b: Double
    init(a: Double, b: Double){
        self.a = a
        self.b = b
    }
    var Summation: Double { return a + b }
    var Subtraction: Double { return a - b }
    var Multiplications: Double { return a * b }
    var Divisions: Double { return a / b }
}

var sum = Calculator.init(a: 6.25, b: 4)
sum.Divisions
sum.Multiplications
sum.Subtraction
sum.Summation
sum.a = 7
sum.Summation

// Задание 8
// Когда нам нужно чтобы переменная изменялась во всех экземплярах а не в 1, это как курс доллара, он же никак не зависит от кол-ва счетов у пользователей и сколько денег там лежит, курс меняется и у всех идет пересчет
// Задание 9
/*
 Только class имеет наследование потому что он ссылочный, а перечесления и структуры передаются путем копирования
 */

// Задание 10

struct RpgGame{
    var coordinatX: Int = 0
    var coordinatY: Int = 0
    
    enum Directions{
        case North, South, East, West
    }
    
    mutating func Move(directions: Directions){
        switch directions{
            case .North:
                self.coordinatY += 1
            case .East:
                self.coordinatY -= 1
            case .West:
                self.coordinatX -= 1
            case .South:
                self.coordinatX += 1
        }
    }
}

var Player1 = RpgGame()
Player1.Move(directions: .East)
Player1.Move(directions: .South)
print(Player1)




