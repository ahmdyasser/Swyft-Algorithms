//
//  main.swift
//  Swyft-Algorithms
//
//  Created by Ahmad Yasser on 19/03/2022.
//

import Foundation

let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)

node1.next = node2
node2.next = node3

var list = LinkedList<Int>()
list.push(3)
list.push(2)
list.push(1)
list.push(5)
list.pop()
print(list)
