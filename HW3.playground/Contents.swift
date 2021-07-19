import UIKit

// Задание 2
func findMinMax(_ array : Int...) -> (min: Int, max: Int) { // сложная функция с вложенными. Это родительская функциями
    func findMin() -> Int{ // доч. фун-я
        var minimumValue = array[0]
        for v in array{
            if v < minimumValue {minimumValue = v}
        }
        return minimumValue
    }
    func findMax() -> Int{ // доч. фун-я
        var maximumValue = array[0]
        for v in array{
            if v > maximumValue {maximumValue = v}
        }
        return maximumValue
    }
    return (findMin(), findMax()) // вызываем функции в return
}
findMinMax(5, 8, 13, 34, 0, 3452345, 32) // этот пример я взял из урока который проходили, если надо могу привести другой!

// Задание 3
func mergeString(_ array : String...) -> String{
    var mergeString = ""
    var count = 0
    for i in array{
        count += 1
        if count < array.count{
            mergeString = mergeString + "\(i),"
        }else{
            mergeString = mergeString + i
        }
    }
    return mergeString
}

mergeString("Anton","Pavel","Tany")

// Задание 4
func swap(_ a : inout Int, _ b : inout Int) { // чтобы мы могли изменять входные значения в функции, по умолчанию они передаются как let. Меняем местами значаения 2 переменных
    let c = a
    a = b*2
    b = c*2
}
var a = 7
var b = 8

swap(&a, &b) // вызов функции с изменяемыми параметрами
a
b

// Задание 5

func comparingArrays(_ array0 : [Int] , _ array1 : [Int]) -> Bool{
    var sumArray1 = 0
    var sumArray2 = 0
    for i in array0 {
        for v in array1 {
            sumArray1 = sumArray1 + i
            sumArray2 = sumArray2 + v
        }
    }
    let result = sumArray1 > sumArray2 ? true : false
    return result
}

comparingArrays([2,3,4,5], [2,3,4])

// Задание 6

func sortDecrease(_ array : inout [Int]){
    for (index, _) in array.enumerated(){
        for (index1, _) in array.enumerated(){
            if array[index1] < array[index]{
                var temp = 0
                temp = array[index]
                array[index] = array[index1]
                array[index1] = temp
            }
        }
    }
}

var array = [2,3,5,5]
sortDecrease(&array)

// Задание 7

func aveSum(_ array : Int...) -> Int{
    var sum = 0
    var i = 0
    for (_ , el) in array.enumerated(){
        sum = sum + el
        i += 1
    }
    let mid = sum / i
    return mid
}

aveSum(1, 6)

// Задание 8

func findIndexString(_ array : String..., string : String) -> Int?{
    var res : Int?
    for (index, el) in array.enumerated(){
        if el == string{
            res = index
        }
    }
    return res
}

findIndexString("Anton","a","C", string: "c")

// Задание 9
//Hello, young man/woman 0

//Задание 10
// Ответ 4

// Функции
//1
typealias tup = (String,String)
func tuple(_ tupple : tup) -> tup{
    var tuple1 = tupple
    tuple1.0 = "c"
    tuple1.1 = "d"
    return tuple1
}
var tupleVar = ("a","b")
tuple(tupleVar)
//2
// Смотрите задание 2 там я привел уже ответ

//Опционалы
//Ответ: У нас есть bool опционал в функции и нам надо его вывести в результат, и в return мы ставим этой переменной ! чтобы сказать о том что там точно не nil

