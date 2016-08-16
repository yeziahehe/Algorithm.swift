//
//  StackTests.swift
//  StackTests
//
//  Created by 叶帆 on 16/8/15.
//
//

import XCTest
@testable import Stack

class StackTests: XCTestCase {
    func testEmptyIntStack() {
        var stack = Stack<Int>()
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top(), nil)
        XCTAssertNil(stack.pop())
    }
    
    func testEmptyStringStack() {
        var stack = Stack<String>()
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top(), nil)
        XCTAssertNil(stack.pop())
    }
    
    func testPushAndPop() {
        var stack = Stack<String>()
        stack.push("i")
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.count, 1)
        XCTAssertEqual(stack.top(), "i")
        
        let result = stack.pop()
        XCTAssertEqual(result, "i")
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top(), nil)
        XCTAssertNil(stack.pop())
    }
    
    func testEmptyPop() {
        var stack = Stack<String>()
        stack.pop()
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top(), nil)
        XCTAssertNil(stack.pop())
    }
    
}
