//
//  CircularProfileImageView.swift
//  ThreadsTutorials
//
//  Created by byungho on 10/29/23.
//

import SwiftUI
import Kingfisher

struct CircularProfileImageView: View {
    var user: User?
    
    init(user: User? = nil) {
        self.user = user
    }
    
    var body: some View {
        if let imageUrl = user?.profileImageUrl {
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(Color(.systemGray4))
        }
    }
}

#Preview {
    CircularProfileImageView(user: DeveloperPreview.shared.user)
}
