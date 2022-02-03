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
    let lastName: String
    let photoName: String
    
    static var all = [
        Author(name: "Jérôme", lastName: "Bermude",photoName: "avatar0"),
        Author(name: "Lucy", lastName: "Diamond",photoName: "avatar1"),
        Author(name: "Manon",lastName: "Des Sources", photoName: "avatar2"),
        Author(name: "Henri ",lastName: "Maklouf", photoName: "avatar3"),
        Author(name: "John", lastName: "Seen",photoName: "avatar4"),
        Author(name: "Ayoub",lastName: "Saidia", photoName: "avatar5"),
        Author(name: "Juliette", lastName: "Terasse",photoName: "avatar6"),
        Author(name: "Philippe", lastName: "Armont",photoName: "avatar7"),
        Author(name: "Maximus", lastName: "Thales",photoName: "avatar8"),
    ]
}
