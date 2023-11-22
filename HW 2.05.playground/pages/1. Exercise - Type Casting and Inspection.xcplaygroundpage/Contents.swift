/*:
 ## Упражнение - приведение типов и их контроль
 
 1.1 Создайте коллекцию типа [Any], включающую несколько дробных чисел, целых, строк и значений логического типа. Выведите содержимое коллекции на консоль.
 */
var collection: [Any] = [12, 35, 157, 73, 88, 0.32, 3.69, 32.08, 16.7, "word", "bread", "car", "rocket", "country", true, true, false, true, false, false, false]

for item in collection {
    print(item)
}
/*:
 1.2 Переберите коллекцию и для каждого целого числа выведите на консоль "Целое число " и его значение. Повторите то же самое для дробных чисел, строк и булевых значений.
 */
for item in collection {
    if item is Int {
        print("Целое число", item)
    }
}

for item in collection {
    if item is Double {
        print("Дробное число", item)
    }
}

for item in collection {
    if item is String {
        print("Строка", item)
    }
}

for item in collection {
    if item is Bool {
        print("Булевое значение", item)
    }
}

/*:
 1.3 Создайте словарь [String : Any], где все значения — это смесь дробных и целых чисел, строк и булевых значений. Переберите словарь и выведете на консоль пары ключ/значения для всех элементов коллекции.
 */
let someDictionary: [String: Any] = [
    "key1": 42,
    "key2": "Hello, Swift!",
    "key3": 3.14,
    "key4": true,
    "key5": 21,
    "key6": "25",
    "key7": 5.52,
    "key8": false,
    "key9": 111,
    "key10": "Tomorrow",
    "key11": 0.8,
    "key12": true
]

for (key, value) in someDictionary {
    print("Key: \(key), Value: \(value)")
}


/*:
 1.4 Создайте переменную `total` типа `Double`, равную 0. Переберите все значения словаря, и добавьте значение каждого целого и дробного числа к значению вашей переменной. Для каждой строки добавьте 1. Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`. Выведите на консоль значение `total`.
 */
var total: Double = 0

for value in someDictionary.values {
    if let intValue = value as? Int {
        total += Double(intValue)
    } else if let doubleValue = value as? Double {
        total += doubleValue
    } else if value is String {
        total += 1
    } else if let boolValue = value as? Bool {
        if boolValue {
            total += 2
        } else {
            total -= 3
        }
    }
}

print(total)



/*:
 1.5 Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему. Игнорируйте булевы значения.  Распечатайте итог.
 */
total = 0

for value in someDictionary.values {
    if let intValue = value as? Int {
        total += Double(intValue)
    } else if let doubleValue = value as? Double {
        total += doubleValue
    } else if let stringValue = value as? String {
        total += Double(stringValue) ?? 0
    }
}

print(total)

//: страница 1 из 2  |  [Далее: упражнение для приложения - типы тренировок](@next)
