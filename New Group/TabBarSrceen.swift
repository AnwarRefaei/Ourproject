//
//  TabBarSrceen.swift
//  ProjectService1
//
//  Created by Anwar Refaei on 08/11/1444 AH.
//

import SwiftUI

struct TabBarSrceen: View {
    //   @EnvironmentObject var viewModel : viewModel
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("issuper") var issuper : Bool = false
    var body: some View {
        VStack{
            
            TabView {
                NavigationView {
                    Profile ()
                }
                .tabItem{
                    VStack {
                        Image(systemName: "person.fill")
                        Text("Profile")
                        
                    }
                }
                //if issuper {
                    
                    
                    AddProject() //.environmentObject(viewModel)
                        .tabItem{
                            VStack {
                                Image(systemName: "folder.badge.plus")
                                Text("`Add Project`")
                                
                            }
                      //  }
                }
                Ideas()
                    .tabItem{
                        VStack {
                            Image(systemName: "theatermasks.circle")
                            Text("Ideas")
                            
                        }
                    }
                
                Website()
                    .tabItem{
                        VStack {
                            Image(systemName: "link")
                            Text("Website")
                            
                        }
                    }
                
                NavigationView {
                    HomePage()
                }
                
                .tabItem{
                    VStack {
                        Image(systemName: "house.fill")
                        Text("Home")
                        
                    }
                    
                }
                
            }
            
            
        }
        
    }
    
}




struct TabBarSrceen_Previews: PreviewProvider {
    static var previews: some View {
        TabBarSrceen()
        //.environmentObject(viewModel())
        
    }
}
