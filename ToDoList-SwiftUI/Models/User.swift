//
//  User.swift
//  ToDoList-SwiftUI
//
//  Created by Sillas Santos on 13/06/23.
//

import Foundation

struct User: Codable {
     
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
