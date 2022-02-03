//
//  ProfilPictureCell.swift
//  MessengerAppClone
//
//  Created by Elliot Knight on 03/02/2022.
//

import SwiftUI

struct ProfilPictureCell: View {
    let author: Author
    var width: CGFloat = 50
    var isConnectedOnListMessage = true
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
        Image(author.photoName)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: width)
            if isConnectedOnListMessage {
            CircleConnection()
            }
        }
    }
}

struct ProfilPictureCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfilPictureCell(author: Author(name: "Henry", lastName: "ee",photoName: "avatar1"), width: 50)
    }
}
