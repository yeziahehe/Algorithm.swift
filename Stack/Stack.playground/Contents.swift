public struct Stack<Element> {
    
    private var array = Array<Element>()
    
    public var count: Int {
        return array.count
    }
    
    public func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    public func top() -> Element? {
        return array.last
    }
    
    public mutating func push(element: Element) {
        array.append(element)
    }
    
    public mutating func pop() -> Element? {
        return array.popLast()
    }
}

var testArray = Stack(array: ["y", "e", "z"])

testArray.push("i")
testArray.pop()
testArray.isEmpty()
testArray.count
testArray.top()

testArray.pop()
testArray.pop()
testArray.pop()
testArray.pop()
testArray.count

