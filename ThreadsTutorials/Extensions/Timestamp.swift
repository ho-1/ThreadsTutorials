//
//  Timestamp.swift
//  ThreadsTutorials
//
//  Created by byungho on 10/31/23.
//

import Foundation
import Firebase

extension Timestamp {
    func timestampString() -> String {
        let formater = DateComponentsFormatter()
        formater.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
        formater.maximumUnitCount = 1
        formater.unitsStyle = .abbreviated
        return formater.string(from: self.dateValue(), to: Date()) ?? ""
    }
}
