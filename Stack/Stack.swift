//
//  Stack.swift
//  
//
//  Created by 叶帆 on 2017/9/6.
//

public struct Stack<T> {
    
    fileprivate var array = [T]()
    
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
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    /**
     获取栈顶元素的值
     - returns: 栈顶元素的值，如果为空返回nil
     */
    public var top: T? {
        return array.last
    }
    
    /**
     向栈顶插入一个元素
     - parameter element: 需要插入的值
     - 时间复杂度: O(1)
     */
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    /**
     删除栈顶元素
     - returns: 返回删除栈顶元素的值，如果为空返回nil
     - 时间复杂度: O(1)
     */
    public mutating func pop() -> T? {
        return array.popLast()
    }
}

extension Stack: Sequence {
    public func makeIterator() -> AnyIterator<Element> {
        var curr = self
        return AnyIterator {
            _ -> Element? in
            return curr.pop()
        }
    }
}
