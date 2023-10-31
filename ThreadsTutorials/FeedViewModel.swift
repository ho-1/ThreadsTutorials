//
//  FeedViewModel.swift
//  ThreadsTutorials
//
//  Created by byungho on 10/31/23.
//

import Foundation

@MainActor
class FeedViewModel: ObservableObject {
    @Published var threads = [Thread]()
    
    init() {
        Task { try await fetchThread() }
    }
    
    func fetchThread() async throws {
        self.threads = try await ThreadService.fetchThread()
        try await fetchUserDataForThreads()
    }
    
    func fetchUserDataForThreads() async throws {
        for i in 0 ..< threads.count {
            let thread = threads[i]
            let ownerUid = thread.ownerUid
            let threadUser = try await UserService.fetchUser(withUid: ownerUid)
            
            threads[i].user = threadUser
        }
    }
}
