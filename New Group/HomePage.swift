//
//  HomePage.swift
//  ProjectService1
//
//  Created by Anwar Refaei on 08/11/1444 AH.
//

import SwiftUI

struct HomePage: View {
    @State var isShowingSheet : Bool = false
    var image = ["1" , "2" , "3" ,"4" , "5" ,"6" , "7"]
    var body: some View {
        List{
            
            HStack {
                Image("jazanu")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 140 , height: 100)
                Text ("Projects")
                    .padding(.horizontal)
                    .bold()
                    .font(.title)
                
                
            } //HStack out
            
            
            Section(header: Text ("Bassem , B2")){
                HStack {
                    Image("awen")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 140 , height: 100)
                    Text ("Awen App")
                        .padding(.horizontal)
                        .font(.title)
                    
                    Button {
                        isShowingSheet = true
                    } label: {
                        Image(systemName: ("arrow.forward"))
                        
                    }
                    
                }
                
                
            }
            //HStack out
            
            
            Section(header: Text ("Raad , Abdu")){
                HStack {
                    Image("raad")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 140 , height: 100)
                    Text ("Donation App")
                        .padding(.horizontal)
                        .font(.title2)
                    
                    
                    Button {
                        isShowingSheet = true
                    } label: {
                        Image(systemName: ("arrow.forward"))
                        
                    }
                } //HStack out
                
            }
            Section(header: Text ("Yasser , Anwar")){
                HStack {
                    Image("anwarlogo")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 140 , height: 100)
                    Text ("Projects Appp")
                        .padding(.horizontal)
                        .font(.title2)
                    
                    
                    
                    Button {
                        isShowingSheet = true
                    } label: {
                        Image(systemName: ("arrow.forward"))
                        
                    }
                }
            }
        } //list
        .sheet(isPresented: $isShowingSheet) {
            List {
                
                Section(header: Text("Abstract")
                    .font(.title2)
                    .foregroundColor(Color.blue)
                    .padding(.leading)
                    .bold()
                    .offset(x: -40)
                ){
                    
                    
                    VStack {
                        
                        
                        // Section(header: Text("Abstract").padding(.horizontal)){
                        //   VStack {
                        
                        Text("Transportation has become an essential part of our lives, and it is diverse in its forms, and these means are multiple  And these means may break down at any moment and you need to ask for help , And this project provides an application for those who have a problem on the roads. ")
                            .font(.body)
                        
                    }
                    
                }
                Section(header: Text("Project Scope :")
                    .font(.title2)
                    .foregroundColor(Color.blue)
                    .padding(.leading)
                    .bold()
                    .bold()
                        
                    .offset(x: -40)
                        
                ){
                    
                    
                    Text ("Gender : Our project will be available to both male and female.")
                        .font(.body)
                    //  .foregroundColor(.blue)
                    
                    
                    Text("Region : The geographical scope of the application will be in the Kingdom of Saudi Arabia.")
                        .font(.body)
                    //  .foregroundColor(.blue)
                    
                    
                    Text("Availability : It will be available 24 hours a day,seven days a week.")
                        .font(.body)
                    //    .foregroundColor(.blue)
                    
                    
                    Text("Users : Citizens and residents.")
                        .font(.body)
                    //  .foregroundColor(.blue)
                    
                    
                }
                Section(header: Text(" Goals and Objectives :")
                    .font(.title2)
                    .foregroundColor(Color.blue)
                    .padding(.leading)
                    .bold()
                    .offset(x: -40)
                        
                ){
                    
                    Text ("Easy helping people.")
                        .font(.body)
                    //   .foregroundColor(Color.black)
                    
                    
                    Text("Urging to do good and help people.")
                        .font(.body)
                    //       .foregroundColor(Color.black)
                    
                    Text("Easy to part in the help from anywhere and at any time.")
                        .font(.body)
                    //       .foregroundColor(Color.black)
                    
                    
                    Text("Availability : It will be available 24 hours a day,seven days a week.")
                        .font(.body)
                    //   .foregroundColor(Color.black)
                    
                }
                Section(header: Text(" screens snapshots :")
                    .font(.title2)
                    .foregroundColor(Color.blue)
                    .padding(.leading)
                    .bold()
                    .bold()
                        
                    .offset(x: -40)
                        
                ){
                    ScrollView(.horizontal){
                        HStack {
                            ForEach (image.indices, id:\.self) { index in
                                Image (image[index])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width :200 , height :350)
                                    .zIndex(Double(image.count - index))
                            }
                        }
                    }
                    
                }
            }
            
            
        }
    }
    
    
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }
}
