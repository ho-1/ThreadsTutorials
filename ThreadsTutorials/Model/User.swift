//
//  User.swift
//  ThreadsTutorials
//
//  Created by byungho on 10/30/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
