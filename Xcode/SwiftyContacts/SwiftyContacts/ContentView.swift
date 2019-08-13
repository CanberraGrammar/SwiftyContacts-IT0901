//
//  ContentView.swift
//  SwiftyContacts
//
//  Created by Matthew Purcell on 14/8/19.
//  Copyright © 2019 Matthew Purcell. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            HStack {
                Text("Alex")
                Text("Derlacki")
                    .fontWeight(.bold)
            }
            HStack {
                Text("Indie")
                Text("Saunders")
                    .fontWeight(.bold)
            }
            HStack {
                Text("Gabe")
                Text("Francis")
                    .fontWeight(.bold)
            }
            HStack {
                Text("Matt")
                Text("Crafter")
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
