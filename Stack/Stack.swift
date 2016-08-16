//
//  Stack.swift
//  Stack
//
//  Created by 叶帆 on 16/8/15.
//
//

public struct Stack<Element> {
    
    private var array = Array<Element>()
    
    /**
     获取当前栈的长度
     - returns: 返回栈的长度，如果Stack为空，则值为0
     */
    public var count: Int {
        return array.count
    }
    
    /**
     判断是否为空
     - returns: 如果Stack为空，则值为true，否则值为false
     */
    public func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    /**
     获取栈顶元素的值
     - returns: 栈顶元素的值，如果为空返回nil
     */
    public func top() -> Element? {
        return array.last
    }
    
    /**
     向栈顶插入一个元素
     - parameter element: 需要插入的值
     - 时间复杂度: O(1)
     */
    public mutating func push(element: Element) {
        array.append(element)
    }
    
    /**
     删除栈顶元素
     - returns: 返回删除栈顶元素的值，如果为空返回nil
     - 时间复杂度: O(1)
     */
    public mutating func pop() -> Element? {
        return array.popLast()
    }
}

extension Stack: SequenceType {
    public func generate() -> AnyGenerator<Element> {
        var curr = self
        return AnyGenerator {
            _ -> Element? in
            return curr.pop()
        }
    }
}