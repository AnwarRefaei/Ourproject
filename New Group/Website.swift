//
//  Website.swift
//  ProjectService1
//
//  Created by Anwar Refaei on 08/11/1444 AH.
//

import SwiftUI

struct Website: View {
    @State private var ComputerSC = false
    @State private var NetworkEn = false
    @State private var InformationTech = false
    var body: some View {
                    NavigationView {
                VStack {
                    
                    Text("Plan of Computer and Information Technology👨🏻‍💻")
                        .foregroundColor(.white)
                        .frame(width: 400, height: 40 )
                        .background(Color ("back"))
                        .cornerRadius(15)
                    //   .offset(y:-260)
                    //   .padding()
                    
                    
                    
                    List{
                        
                        
                        Button {
                            
                            ComputerSC.toggle()
                            
                        } label: {
                            Text("Computer Science")
                                .foregroundColor(.white)
                                .frame(width: 340, height: 40)
                                .background(Color ("back"))
                                .cornerRadius(15)
                            
                            
                        }
                        Button {
                            
                            NetworkEn.toggle()
                            
                        } label: {
                            Text("Network Engineering")
                                .foregroundColor(.white)
                                .frame(width: 340, height: 40)
                                .background(Color ("back"))
                                .cornerRadius(15)
                        }
                        Button {
                            
                            InformationTech.toggle()
                            
                        } label: {
                            Text("Information Technology")
                                .foregroundColor(.white)
                                .frame(width: 340, height: 40)
                                .background(Color ("back"))
                                .cornerRadius(15)
                            
                        }
                        
                    }
                    
                    
                    Text("Some Links for you ")
                        .foregroundColor(.white)
                        .frame(width: 400, height: 40 )
                        .background(Color ("back"))
                        .cornerRadius(15)
                    
                    List {
                        Link(destination: URL(string: "https://lms.jazanu.edu.sa/webapps/login/?action=login")!) {
                            Text("Blackboard Jazan Web")
                                .foregroundColor(.white)
                                .frame(width: 340, height: 40)
                                .background(Color ("back"))
                                .cornerRadius(15)
                            
                            
                            
                        }
                        
                        Link(destination: URL(string: "https://apps.apple.com/us/app/blackboard-learn/id950424861")!) {
                            Text("Blackboard Jazan IOS")
                                .foregroundColor(.white)
                                .frame(width: 340, height: 40)
                                .background(Color ("back"))
                                .cornerRadius(15)
                        }
                        Link(destination: URL(string: "https://play.google.com/store/apps/details?id=com.blackboard.android.bbstudent&pli=1")!) {
                            Text("Blackboard Jazan Android")
                                .foregroundColor(.white)
                                .frame(width: 340, height: 40)
                                .background(Color ("back"))
                                .cornerRadius(15)
                        }
                        
                        
                    }
                    
                    Link(destination: URL(string: "https://edugate.jazanu.edu.sa/jazan//init")!) {
                        Text("Jazan University link")
                            .foregroundColor(Color.blue)
                            .frame(width: 180 , height: 60)
                        
                            .background(.black)
                            .cornerRadius(30)
                    }
                    
                    
                }
                .sheet(isPresented: $ComputerSC) {
                    Image("PlanComputer")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 390, height: 500)
                    
                }
                
                .sheet(isPresented: $NetworkEn) {
                    Image("PlanComputer")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 390, height: 500)
                    
                }
                .sheet(isPresented: $InformationTech) {
                    Image("PlanComputer")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 390, height: 500)
                    
                }
                
            }
            
            
        }
    }

    


struct Website_Previews: PreviewProvider {
    static var previews: some View {
        Website()
    }
}
