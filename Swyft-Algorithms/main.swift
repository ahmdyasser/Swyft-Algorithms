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


print(node1)
print(node2)
print(node3)
