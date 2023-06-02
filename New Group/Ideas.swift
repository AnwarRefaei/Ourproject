//
//  Ideas.swift
//  ProjectService1
//
//  Created by Anwar Refaei on 08/11/1444 AH.
//

import SwiftUI

struct Ideas: View {
    @State var AddIdea = ""
    @State var ShowingAlert : Bool = false
    @State var InputIdea : String = ""
    @State var text: String = UserDefaults.standard.string(forKey: "TEXE_KEY") ?? ""
    @State var Ideaname : String = ""
    @State var Detelsidea : String = ""
    
    
    @StateObject var modelData = DBViewModel()
    
    
    
    
    var body: some View {
        NavigationView{
            
            
            ScrollView {
                
            }
            .navigationTitle("Ideas ")
            .toolbar {
                ToolbarItem (placement: .navigationBarTrailing) {
                    Button {
                        modelData.openNewPage.toggle()
                        
                        
                    } label: {
                        Image(systemName: "plus")
                            .font(.title2)
                    }

                }
            }
            .sheet(isPresented: $modelData.openNewPage, content: {
                Ideas2()
                    .environmentObject(modelData)
                
            })
        }
    }
    }


struct Ideas_Previews: PreviewProvider {
    static var previews: some View {
        Ideas()
    }
}
