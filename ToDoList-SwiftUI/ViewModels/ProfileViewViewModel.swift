//
//  ProfileViewViewModel.swift
//  ToDoList-SwiftUI
//
//  Created by Sillas Santos on 13/06/23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation


class ProfileViewViewModel: ObservableObject {
    
    init () {}
    
    func toogleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            db.collection("todos")
            db.document(itemCopy.id)
            .setData(itemCopy.asDictonary())
    }
}
