//
//  ContentView.swift
//  MessengerAppClone
//
//  Created by Elliot Knight on 03/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        TabView {
            NavigationView {
                HomeView()
                    .navigationBarTitle("Discussions", displayMode: .inline)
                    .toolbar {
                        ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                            Button(action: {
                                // More code to come
                                showingSheet.toggle()
                            } , label: { Circle()
                                .frame(width: 30, height: 30)}
                            ).sheet(isPresented: $showingSheet) {
                                AccountParametersView(author: Author(name: "Jerôme", photoName: "avatar0"))
                            }
                        }
                        ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                            Button(action: {
                                // More code to come
                            }, label: {
                                Image(systemName: "square.and.pencil")
                            })
                        }
                    }
            }
            .tabItem {
                Image(systemName: "message")
                Text("Discussions")
            }
            Text("Personnes")
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Discussions")
                }
        }
    }
}


struct HomeView: View {
    var relativeFormatter: RelativeDateTimeFormatter {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .short
        formatter.locale = Locale(identifier: "en")
        return formatter
    }
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 20) {
                        ForEach(Author.all) { author in
                            VStack {
                                ProfilPictureCell(author: author, width: 75, isConnectedOnListMessage: true)
                                Text(author.name)
                            }
                        }
                    }.padding(.all, 10)
                }
                
                ForEach(Message.all) { message in
                    HStack {
                        ProfilPictureCell(author: message.author, width: 70, isConnectedOnListMessage: false)
                            .padding(.vertical, 10)
                        VStack(alignment: .leading, spacing: 4) {
                            Text(message.author.name)
                                .font(.headline)
                            Text(message.lastMessageContent)
                                .foregroundColor(.gray)
                                .lineLimit(1)
                            Text(relativeFormatter.localizedString(for: message.creationDate, relativeTo: Date()))
                                .foregroundColor(.gray)
                        }.padding(.bottom, 2)
                    }.padding(.horizontal, 10)
                }
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}