//
//  Profile.swift
//  ProjectService1
//
//  Created by Anwar Refaei on 08/11/1444 AH.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        
        ZStack {
            VStack {
                List{
                    HStack {
                        Image("jazanu")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90 , height: 90)
                            .padding()
                        
                        Text("Admainstrator of CS ")
                            .bold()
                            .font(.title2)
                        }
                    Text("anwarrefaei7@gmail.com")
                    Text("0595982469")
                    Text("2000")
                    Text("Location 📍")
                    
                }
                

               
                
            }
            
        }
        
        }

    }
    


struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
