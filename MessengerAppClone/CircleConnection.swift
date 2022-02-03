//
//  CircleConnection.swift
//  MessengerAppClone
//
//  Created by Elliot Knight on 03/02/2022.
//

import SwiftUI

struct CircleConnection: View {
    var body: some View {
        Circle()
            .fill(.green)
            .frame(width: 17, height: 17)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
    }
}

struct CircleConnection_Previews: PreviewProvider {
    static var previews: some View {
        CircleConnection()
    }
}
