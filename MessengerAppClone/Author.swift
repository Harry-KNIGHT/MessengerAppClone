//
//  Author.swift
//  MessengerAppClone
//
//  Created by Elliot Knight on 03/02/2022.
//

import Foundation

struct Author: Identifiable {
    var id = UUID()
    let name: String
    let photoName: String
    
    static var all = [
    Author(name: "Henry", photoName: "avatar0"),
    Author(name: "Henry", photoName: "avatar1"),
    Author(name: "Henry", photoName: "avatar2"),
    Author(name: "Henry", photoName: "avatar3"),
    Author(name: "Henry", photoName: "avatar4"),
    Author(name: "Henry", photoName: "avatar5"),
    Author(name: "Henry", photoName: "avatar6"),
    Author(name: "Henry", photoName: "avatar7"),
    Author(name: "Henry", photoName: "avatar8"),
    ]
}
