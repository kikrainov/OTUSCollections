import UIKit

/*
 Описание/Пошаговая инструкция выполнения домашнего задания:
 1. Есть произвольный массив чисел, найти максимальное и минимальное число и поменять их местами
 2. Есть два массива символов - собрать результирующее множество из символов, что повторяются в 2х массивах
 3. Создать словарь с соотношением имя (ключ) пользователя - пароль (значение), получить из словаря все имена, пароли которых длиннее 10 символов
 Задачи рекомендуется делать в Playground
 */


/*
1. Есть произвольный массив чисел, найти максимальное и минимальное число и поменять их местами
 */
func makeList(_ n: Int) -> [Int] {
    return (0..<n).map{ _ in Int(arc4random_uniform(200) + 5) }
}

let list = makeList(200)


func customSwapper(array: [Int]) -> [Int] {
    var minValue: Int = 0
    var maxValue: Int = 0
    
    var minIndex: Int = 0
    var maxIndex: Int = 0
    
    var finalArray: [Int] = array
    
    for i in 0 ..< array.count {
        if array[i] < minValue {
            minIndex = i
            minValue = array[i]
        }
        if array[i] > minValue {
            maxIndex = i
            maxValue = array[i]
        }
    }
    
    finalArray[minIndex] = array[maxIndex]
    finalArray[maxIndex] = array[minIndex]

    print(finalArray[minIndex])
    print(finalArray[maxIndex])
    
    return finalArray
}


/*
 2. Есть два массива символов - собрать результирующее множество из символов, что повторяются в 2х массивах
 */

let firstCharArray: [Character] = ["a", "s", "d", "f", "y", "u", "a"]
let secondCharArray: [Character] = ["s", "u", "d", "m", "e", "r", "a"]

//нужно вернуть пересечение в виде множества
func intersect(arrayOne: [Character], arrayTwo: [Character]) -> Set<Character> {
    
    return Set(arrayOne).intersection(Set(arrayTwo))
}

print(intersect(arrayOne: firstCharArray, arrayTwo: secondCharArray))


/*
 3. Создать словарь с соотношением имя (ключ) пользователя - пароль (значение), получить из словаря все имена, пароли которых длиннее 10 символов
 Задачи рекомендуется делать в Playground
 */

var logPassDictionary: Dictionary<String, String> = ["asd":"fghty", "log1":"rtgeghnrhnrrr335", "log2":"gsgehryjryn674", "log3":"ggfggbggbfeb5784", "log4":"fghty1", "log5":"2fghty", "log6":"it4fghty"]

func moreTenCharFinder(dictionary: Dictionary<String, String>) -> [String] {
    var namesArray: [String] = []
    
    for i in logPassDictionary {
        if i.value.count > 10 {
            namesArray.append(i.key)
        }
    }
    return namesArray.sorted()
}

print(moreTenCharFinder(dictionary: logPassDictionary))


