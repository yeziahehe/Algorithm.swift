public struct Stack<T> {
    
    fileprivate var array = [T]()
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var top: T? {
        return array.last
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
}

var testArray = Stack(array: ["y", "e", "z"])

testArray.push("i")
testArray.pop()
testArray.isEmpty
testArray.count
testArray.top

testArray.pop()
testArray.pop()
testArray.pop()
testArray.pop()
testArray.count
