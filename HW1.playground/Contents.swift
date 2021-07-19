import UIKit

/*
 2 вопрос
 let это константа ей присваивается значение и оно не изменно
 var это переменная которая может менять свое значения в ходе выполнения программы
*/

/*
 3 вопрос
 Ответ: Нет данный код не может быть выполнен потому что нарушен синтаксис
 Должно быть так
 var name1 = "Nikita"; var name2 = "Anton"; var name3 = "Maria"
 */

/*
 4 вопрос
 let a = 7 Int
 let b = 7.0 Double
 let c = "7" String
 let d = UInt8.max  UInt8 и значение d = 255, потому что UInt 8 имеет диапозон от 0 до 255
 let e = 1_000_000 Int
 */

/*
 5 вопрос
 Будет ошибка потому Int не может хранить число больше чем его максимальное значение
 */

/*
 6 вопрос
 1.Код HTTP статуса
 */
 let http404error = (404, "Not Found")
/*
 2.  Для групировки значений вывода данных
 */
 var name = "Anton"
 var surname = "Levkin"
 var patronymic = "Andreevich"
 let fullName = (name, surname, patronymic)
 print(fullName)
/*
 3. Чтобы не плодить переменные мы можем получить определеное значение кортежа и произвести с ним действие
 */
let const = (pi: 3.14159, e: 2.71)
var r = 4
var s = const.pi * Double(r)

/*
 Вопрос 8
 let a = 21 / 8     ответ 2
 let b = 21 % 8     ответ 5
 let c = a == b     ответ false
 let d = a != b     ответ true
 let e = c && d     false
 let f = c || d     true
 */

