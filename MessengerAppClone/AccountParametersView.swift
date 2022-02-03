//
//  AccountParametersView.swift
//  MessengerAppClone
//
//  Created by Elliot Knight on 03/02/2022.
//

import SwiftUI

struct AccountParametersView: View {
    let author: Author
    var body: some View {
        VStack {
        ProfilPictureCell(author: author,width: 90, isConnectedOnListMessage: false)
            Text(author.name)
                .font(.title2.bold())
                .padding(4)
            Text("Hey, I am a modal view, dev call me sheet but I'm not using CSS 🥲")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.top, 30)
            Spacer()
        }.padding(.top, 40)
    }
}

struct AccountParametersView_Previews: PreviewProvider {
    static var previews: some View {
        AccountParametersView(author: Author(name: "Maximus", lastName: "Thales", photoName: "avatar8"))
    }
}
