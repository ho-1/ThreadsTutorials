//
//  CircularProfileImageView.swift
//  ThreadsTutorials
//
//  Created by byungho on 10/29/23.
//

import SwiftUI
import Kingfisher

enum ProfileImageSize {
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xLarge
    
    var demension: CGFloat {
        switch self {
        case.xxSmall: return 28
        case.xSmall: return 32
        case.small: return 40
        case.medium: return 48
        case.large: return 64
        case.xLarge: return 80
        }
    }
}

struct CircularProfileImageView: View {
    var user: User?
    let size: ProfileImageSize
    
    var body: some View {
        if let imageUrl = user?.profileImageUrl {
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: size.demension, height: size.demension)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.demension, height: size.demension)
                .foregroundColor(Color(.systemGray4))
        }
    }
}

#Preview {
    CircularProfileImageView(user: DeveloperPreview.shared.user, size: .medium)
}
