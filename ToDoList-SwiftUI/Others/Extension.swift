//
//  Extension.swift
//  ToDoList-SwiftUI
//
//  Created by Sillas Santos on 14/06/23.
//

import Foundation

extension Encodable {
    
    func asDictonary() -> [String: Any] {
        
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
