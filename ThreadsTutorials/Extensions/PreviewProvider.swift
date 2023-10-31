//
//  PreviewProvider.swift
//  ThreadsTutorials
//
//  Created by byungho on 10/30/23.
//

import SwiftUI
import Firebase

// 이거 왜 동작이 안될까?
extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "유재석", email: "you@gmail.com", username: "jaesuk2")
    
    let thread = Thread(ownerUid: "123", caption: "This is Test Thread", timestamp: Timestamp(), likes: 0)
}
