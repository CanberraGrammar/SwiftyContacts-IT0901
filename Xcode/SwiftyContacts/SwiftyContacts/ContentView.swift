//
//  ContentView.swift
//  SwiftyContacts
//
//  Created by Matthew Purcell on 14/8/19.
//  Copyright © 2019 Matthew Purcell. All rights reserved.
//

import SwiftUI

struct Contact {
    let firstName: String
    let lastName: String
}

struct ContentView: View {
        
    let contactArray = [
        Contact(firstName: "Alex", lastName: "Derlacki"),
        Contact(firstName: "Matt", lastName: "Brown"),
        Contact(firstName: "Indie", lastName: "Saunders"),
        Contact(firstName: "Gabe", lastName: "Francis"),
        Contact(firstName: "Matt", lastName: "Crafter")
    ]
            
    var body: some View {
        List(contactArray, id: \.firstName) { contact in
            HStack {
                Text(contact.firstName)
                Text(contact.lastName)
                    .fontWeight(.bold)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
