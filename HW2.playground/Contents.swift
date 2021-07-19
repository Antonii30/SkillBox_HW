import UIKit

// Пояснение к уроку про циклы
var number = 2
for _ in 0..<19{
    number *= 2
}
number

// Задание 3
var array1 = [1, 2, 3, 4 ,5]
var array2: [Int] = [1, 2, 3, 4, 5]
var array3: Array<Int> = [1, 2, 3, 4, 5]

// Задание 4

var task3 = [3, 2, 1]
task3.append(4)
task3.remove(at: 0)
var task3Max = 0
var task3Min = task3[0]
for i in task3 {
    if task3Max < i {
        task3Max = i
    }
    if task3Min > i  {
        task3Min = i
    }
}
print("Array task3 min number = \(task3Min) and max number = \(task3Max). The difference between the minimum and maximum number = \(task3Max - task3Min)")

// Задание 5

var task4 = [1, 2]
var task4_2 = [3, 4]
task4.append(5)
var task4All = task4 + task4_2
task4 += [4]
task4.insert(6, at: 4)

// Задание 6
/*
 Изначальный массив 7 5 2
 Потом 7 9 2
 Потом 7 9 11
 */

// Задание 7
var task7Name = ["Anton", "Polina", "Andrey", "Sveta", "Tanya"]
var greeting = ""
for (index, name) in task7Name.enumerated() {
    let i = 0
    if i == index % 2 {
        greeting += "Go left, \(name); "
    } else {
        greeting += "Go right, \(name); "
    }
}
print(greeting)

// Задание 8
/*
 Массив имеет индекс для каждого элемента, в массиве значение могут быть не уникальными.
 Сет не имеет индексации по значениям, но каждое значение уникально.
 */

// Задание 9
/*
 myEmoji.intersection(wifeEmoji)  "😂", "🎊"
 myEmoji.symmetricDifference(wifeEmoji) "🕺", "🚀", "🎸", "🦋"
 myEmoji.union(wifeEmoji) "😂", "🎊", "🕺", "🚀", "🎸", "😂", "🎊", "🦋"
 myEmoji.subtracting(wifeEmoji) "🕺", "🚀"
 */

// Задание 10
/*
 Set использовал для ников пользователей в какой нибудь игре и проверял бы при регистрации, есть ли такой ник
 Array для хранения имен солистов групп. Переменную назвал бы именем группы, значения бы были имена солистов группы.
 Ditionary использовал в библиотеке. Ключевое слово название книги, а значению бы присвоил номер полки на которой лежит книга.
 */

// Задание 11
let number1 = 5
let power = 2
var result = 1
for _ in 0..<power {
    result = number1 * result
}
print(result)


// Задание 12
let mood = 7
if mood <= 3 {
    print("Bad mood")
} else if mood >= 4 && mood <= 7 {
    print("Good mood")
} else {
    print("Great mood")
}

switch mood {
case 0..<3: print("Bad mood")
case 4..<8: print("Good mood")
default: print("Great mood")
}

// Коллекции
// Ответ "🏆", "💃", "🎰💃"

// Условия
// Ответ Good emoji

// Циклы
// Ответ 24
