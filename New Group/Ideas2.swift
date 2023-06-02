//
//  Ideas2.swift
//  ProjectService1
//
//  Created by Anwar Refaei on 12/11/1444 AH.
//

import SwiftUI

struct Ideas2: View {
    @EnvironmentObject var modelData : DBViewModel
    @Environment(\.presentationMode) var presentation
    
    
    
    var body: some View {
        NavigationView{
            
            List {
                Section(header: Text("Title")) {
                    TextField("", text: $modelData.title)
                }
                Section(header: Text("details")) {
                    TextField("", text: $modelData.detail)
                }

            }
            .listStyle(GroupedListStyle())
            
            .navigationTitle("Add Data")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Text("Done")
                    }

                }
                
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentation.wrappedValue.dismiss()
                        
                    } label: {
                        Text("Cancel")
                    }

                }
            }
        }
        
        
    }
}

struct Ideas2_Previews: PreviewProvider {
    static var previews: some View {
        Ideas2().environmentObject(DBViewModel())
    }
}
