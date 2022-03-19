//
//  LinkedList.swift
//  Swyft-Algorithms
//
//  Created by Ahmad Yasser on 19/03/2022.
//

import Foundation

public struct LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        head == nil
    }
    
    //push: adds a value at the front of the linked list
    public mutating func push(_ value: Value) {
        
        //setting pushed value as the new head
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    //append: adds a value at the end of the linked list
    public mutating func append(_ value: Value) {
        guard !isEmpty else {
            push(value)
            return
        }
        
        //changing next from nil to the appended value
        tail!.next = Node(value: value)
        //setting the tail pointer  to the appended value
        tail = tail!.next
    }
    
    
    //returns node at specific index
    public func node(at index: Int) -> Node<Value>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        return currentNode
    }
    
    //@discardableResult is to ignore the returning value when you call the method
    //tail !== node means: tail and node are not pointing to the same object
    @discardableResult
    public mutating func insert(_ value: Value, after node: Node<Value>) -> Node<Value> {
        //
        guard tail !== node else {
            append(value)
            return tail!
        }
        node.next = Node(value: value, next: node.next)
        
        //return the inserted note
        return node.next!
    }
}

extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        guard let head = head else { return "Empty list" }
        return String(describing: head)
    }
}


//MARK: - Performance analysis

//push: O(1)
//append: O(1)
//insert(after:): O(1)
//node(at:): O(n)
