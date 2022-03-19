//
//  LinkedList.swift
//  Swyft-Algorithms
//
//  Created by Ahmad Yasser on 19/03/2022.
//

import Foundation

public class LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        head == nil
    }
}

extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        guard let head = head else { return "Empty list" }
        return String(describing: head)
    }
}

