//
//  ContentView.swift
//  SwiftyContacts
//
//  Created by Matthew Purcell on 14/8/19.
//  Copyright © 2019 Matthew Purcell. All rights reserved.
//

import SwiftUI

struct Contact: Identifiable {
    let id: String
    let firstName: String
    let lastName: String
}

struct AddContactModalView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var firstName: String = ""
    @State var lastName: String = ""
    @Binding var contactArray: [Contact]
    
    var body: some View {
        
        NavigationView {
        
            HStack {
                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
            }
        
        .navigationBarTitle("Add a new contact")
        .navigationBarItems(trailing:
            Button(action: {
                
                let newContact = Contact(id: UUID().uuidString, firstName: self.firstName, lastName: self.lastName)
                
                self.contactArray.append(newContact)
                
                // self.presentationMode.value.dismiss()
                
            }, label: {
                Text("Save")
            })
        )
            
        }
        
    }
    
}

struct ContentView: View {
    
    @State var contactArray = [
        Contact(id: UUID().uuidString, firstName: "Alex", lastName: "Derlacki"),
        Contact(id: UUID().uuidString, firstName: "Matt", lastName: "Brown"),
        Contact(id: UUID().uuidString, firstName: "Indie", lastName: "Saunders"),
        Contact(id: UUID().uuidString, firstName: "Gabe", lastName: "Francis"),
        Contact(id: UUID().uuidString, firstName: "Matt", lastName: "Crafter")
    ]
    
    @State var showAddContactModalView = false
            
    var body: some View {
        
        NavigationView {
        
            List(contactArray) { contact in
                HStack {
                    Text(contact.firstName)
                    Text(contact.lastName)
                        .fontWeight(.bold)
                }
            }
            
        .navigationBarTitle("Swifty Contacts")
        .navigationBarItems(trailing:
            Button(action: {
                self.showAddContactModalView = true
            }, label: {
                Text("Add")
            })
        )
                        
        }
        
        .sheet(isPresented: $showAddContactModalView, content: {
            AddContactModalView(contactArray: self.$contactArray)
        })
        
    }
    
    func addContact() {
        
        let newContact = Contact(id: UUID().uuidString, firstName: "Lachlan", lastName: "Coupland")
        contactArray.append(newContact)
        
        print(UUID().uuidString)
        
    }
    
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
