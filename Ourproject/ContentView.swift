//
//  ContentView.swift
//  Ourproject
//
//  Created by Anwar Refaei on 13/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var email = ""
    @State var password = ""

    var body: some View {
        NavigationView {
            
            VStack {
                
                VStack {
                    TextField("Emaail Address", text: $email)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .padding()
                    SecureField("Password", text: $password)
                        .padding()
                    
                    NavigationLink {
                        TabBarSrceen()
                    } label: {
                        Text("Login")
                            .frame(width: 200 , height: 50)
                    }
                    
                    NavigationLink {
                        SignUpView()
                    } label: {
                        Text("Sign In")
                            .frame(width: 200 , height: 50)
                    }

                }
            }
            .navigationTitle("Sign In")

        }
        
    }
}
struct SignUpView: View {
  //  @AppStorage("TabBarScreen") var TabBarScreen = true
    @State var email = ""
    @State var password = ""
    
    
  //  @EnvironmentObject var viewModel : AppViewModel

    var body: some View {
            VStack {
               
             //   Text("Hello, world!")
                
                VStack{
                    TextField("Emaail Address", text: $email)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .padding()
                    SecureField("Password", text: $password)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .padding()

                    Button {
                        
                        guard !email.isEmpty, !password.isEmpty else {
                            return
                        }
                     //   NavigationLink( destination: TabBarSrceen())
                        
                      //  viewModel.signUp(email: email, password: password)
                        
                    } label: {
                        
                        Text("Create Account")
                            .frame(width: 200 , height: 50)
                            
                    }

                    
                }
            }
            .navigationTitle("Create Account")
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
