//
//  Messages.swift
//  MessengerAppClone
//
//  Created by Elliot Knight on 03/02/2022.
//

import Foundation

struct Message: Identifiable {
    var id = UUID()
    let author: Author
    let lastMessageContent: String
    let creationDate: Date
    
    
    static var all = [
        Message(author: Author.all[0], lastMessageContent: "Vous: Salut Mon ami!", creationDate: Date().addingTimeInterval(-6500)),
        Message(author: Author.all[1], lastMessageContent: "J'ai été voir Tobey Maguire !", creationDate: Date().addingTimeInterval(-12000)),
        Message(author: Author.all[2], lastMessageContent: "Ma copine est malade, tu peux passer en voiture la prendre pour l'emmener voir un médecin ?", creationDate: Date().addingTimeInterval(-13000)),
        Message(author: Author.all[3], lastMessageContent: "Vous: Qu'est-ce qu'il fait beau ! On va au parc du Luxembourg ? 🥰", creationDate: Date().addingTimeInterval(-13789)),
        Message(author: Author.all[4], lastMessageContent: "Comment est-ce qu'il se fait que ton frère soit parti en Écosse aussi vite ?! Il va adorer !", creationDate: Date().addingTimeInterval(-14567)),
        Message(author: Author.all[5], lastMessageContent: "Hello, plusieurs missions dispo aujourd'hui au Parc des Princes !", creationDate: Date().addingTimeInterval(-16788)),
        Message(author: Author.all[6], lastMessageContent: "Here comes the sun ! ☀️", creationDate: Date().addingTimeInterval(-19000)),
        Message(author: Author.all[7], lastMessageContent: "Vous: Le voyage est la récompense !", creationDate: Date().addingTimeInterval(-756040)),
        Message(author: Author.all[8], lastMessageContent: "Comment savoir si tu peux alors que tu me dis toujours non ? 😂", creationDate: Date().addingTimeInterval(-900000)),
    ]
}
