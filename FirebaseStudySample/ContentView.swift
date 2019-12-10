//
//  ContentView.swift
//  FirebaseStudySample
//
//  Created by SeokJun Jeong on 2019/12/08.
//  Copyright © 2019 dino. All rights reserved.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        VStack(alignment: .center) {
            Text("Firebase Authentication")
                .padding(.bottom)
            HStack {
                Text("Email")
                    .frame(width: 100.0, alignment: .trailing)
                TextField("email@sample.com", text: $email)
            }
            .frame(width: 300.0)
            HStack {
                Text("Password")
                    .multilineTextAlignment(.leading)
                    .frame(width: 100.0, alignment: .trailing)
                SecureField("********", text: $password)
            }
            .frame(width: 300.0)
            Button(action: {
                Auth.auth()
                    .createUser(withEmail: self.email, password: self.password) { (result, error) in
                    
                }
            }) {
                Text("Sign up")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
