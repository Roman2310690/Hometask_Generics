import UIKit

// =================================
// MARK: - Hometask
// =================================

/*
 Для решения данных задач используйте Generics и Closures */

/*
 1. Реализуйте универсальную функцию для выполнения простых математических операций
 2. Реализуйте универсальную функцию, которая отсортирует массив по возрастанию или убыванию
 3. Реализуйте универсальную функцию, которая отсортированный массив из задачи 2 запакует в словарь,
    где порядковый номер элемента - это ключ, а значение массива перенесите в значение словаря. */


// =================================
// MARK: - Task 1
// =================================

func mathematicalOperations<T: Numeric>(a: T, b: T, closure: (T, T) -> T) -> T {
    return closure(a, b)
}

mathematicalOperations(a: 15, b: 23.5) { $0 + $1 }
mathematicalOperations(a: 5, b: 2.5) { $0 / $1 }
mathematicalOperations(a: 2.567, b: 100) { $0 * $1 }

// =================================
// MARK: - Task 2
// =================================

func sortArray<T>(_ array: [T], closure: ([T]) -> [T]) -> [T] {
    return closure(array)
}

sortArray([1, 3, 5, 2, 9]) { $0.sorted(by: <) }
var array1  = sortArray(["qwe", "qwerty", "qw", "qwer"]) { $0.sorted(by: >) }

// =================================
// MARK: - Task 3
// =================================

func createDictionary<T>(array: [T], someKey: (Int) -> Int) -> [Int: T] {
    var someDictionary: [Int: T] = [:]
    for (index, arr) in array.enumerated() {
        someDictionary[someKey(index)] = arr
    }
    return someDictionary
}

let dictionaryString = createDictionary(array: array1) { $0 }

print(dictionaryString)
