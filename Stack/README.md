# 栈
栈是所有数据结构中最简单但却是最重要的一种，栈出现的情况在对内含反转数据的应用非常适合。栈是属于 **后进先出 - Last In, First Out（LIFO）** ，最后压入栈中的项总是最先从栈中弹出的项，生活中举个例子说明下，装薯片的时候按顺序装入罐子中，但是吃薯片的时候就要从开口处把最后一个装入的薯片先吃掉。

栈是一种形式的表，属于表类型中的受限表，即插入和删除只发生在一端。在栈当中我们把这端成为栈顶（top）。当我们对栈顶进行插入操作时，即向栈中增加一项时，称之为入栈（push）；对栈进行删除操作时，即从栈中删除一项时，称之为出栈（pop）。

# 核心方法
对于栈来说，主要的核心方法就是入栈和出栈两个方法，向栈顶入栈一个"i"的字符串：
```swift
stack.push("i")
```
目前栈中间的元素为["i"]，从栈里面出栈当前的元素：
```swift
stack.pop()
```
这样返回了元素"i"，并且当前栈为空。继续出栈会导致返回nil，通常在实际应用中这里会做错误处理，“栈下溢（stack underflow）”。

# 源代码
```swift
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
```

具体代码参见[Stack.swift](https://github.com/yeziahehe/Algorithm.swift/blob/master/Stack/Stack.swift)。
