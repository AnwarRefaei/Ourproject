//
//  AddProject.swift
//  ProjectService1
//
//  Created by Anwar Refaei on 08/11/1444 AH.
//

import SwiftUI
import PhotosUI


struct AddProject: View {
    @State var Test = false
    @State private var Projectname = ""
    @State private var PersonName = ""
    @State private var PhotoProject = ""
    @State private var Abstarct = ""
    @State private var Projectscope = ""
    @State private var Goals = ""
    @State private var Screen = ""
    @State var Sellectphoto : [PhotosPickerItem] = []
    @State var data : Data?
    @State var SellectphotoSnapshot : [PhotosPickerItem] = []
    @State var data1 : Data?
    @State var maxselection: [PhotosPickerItem] = []
    @State var SelectedImage : [UIImage] = []
    var body: some View {
        NavigationView {
            List {
                
                
                Section(header: Text("Project Name")
                    .font(.title2)
                    .foregroundColor(Color.blue.opacity(0.7))
                    .padding(.leading)
                    .bold()
                    .offset(x: -40)
                        
                ){
                    
                    
                    TextField ("name broject", text: $Screen,axis: .vertical )
                        .frame(width: 200 , height: 40 )
                        .cornerRadius(15)
                    
                    
                }
                Section(header: Text("Person Name")
                    .font(.title2)
                    .foregroundColor(Color.blue.opacity(0.7))
                    .padding(.leading)
                    .bold()
                    .offset(x: -40)
                        
                ){
                    
                    
                    TextField ("name preson", text: $PersonName,axis: .vertical )
                        .frame(width: 200 , height: 40 )
                        .cornerRadius(15)
                    
                    
                }
                
                Section(header: Text("Project image")
                    .font(.title2)
                    .foregroundColor(Color.blue.opacity(0.7))
                    .padding(.leading)
                    .bold()
                    .offset(x: -40)
                        
                ){
                    
                    
                    TextField ("", text: $PhotoProject ,axis: .vertical )
                    if let data = data, let uiimage = UIImage(data: data) {
                        
                        Image(uiImage: uiimage)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 110, height: 100 )
                        
                        
                    }
                    PhotosPicker (
                        selection: $Sellectphoto,
                        maxSelectionCount: 1,
                        matching: .images
                    ) {
                        Text("Presss here")
                            .font(.title2.bold())
                            .frame(width: 150, height: 30)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(15)
                            .padding()
                        
                        
                    }
                    .onChange(of: Sellectphoto) { newValue in
                        guard let item = Sellectphoto.first
                        else {
                            return
                        }
                        item.loadTransferable(type: Data.self) { result in
                            switch result {
                            case .success(let data):
                                if let data = data {
                                    self.data = data
                                } else {
                                    print ("Data is nil")
                                }
                            case .failure(let failure):
                                fatalError("\(failure)")
                            }
                        }
                    }
                    
                    
                    
                }
                
                Section(header: Text("Abstarct")
                    .font(.title2)
                    .foregroundColor(Color.blue.opacity(0.7))
                    .padding(.leading)
                    .bold()
                    .offset(x: -40)
                        
                ){
                    
                    
                    TextField ("Abstarct broject", text: $Abstarct,axis: .vertical )
                        .frame(width: 200 , height: 300 )
                        .cornerRadius(15)
                }
                
                Section(header: Text("Goals And objectives ")
                    .font(.title2)
                    .foregroundColor(Color.blue.opacity(0.7))
                    .padding(.leading)
                    .bold()
                    .offset(x: -40)
                        
                ){
                    
                    
                    TextField ("Goals And objectives", text: $Goals,axis: .vertical )
                        .frame(width: 200 , height: 150 )
                        .cornerRadius(15)
                    
                    
                }
                
                
                
                
                Section(header: Text("Screen Snapshot")
                    .font(.title2)
                    .foregroundColor(Color.blue.opacity(0.7))
                    .padding(.leading)
                    .bold()
                    .offset(x: -40)
                        
                ){
                    
                    
                    TextField ("Screen Snapshot", text: $Screen,axis: .vertical )
                    VStack {
                        if SelectedImage.count > 0 {
                            ScrollView(.horizontal){
                                HStack{
                                    ForEach(SelectedImage, id: \.self)
                                    {img in
                                        Image(uiImage: img)
                                        //    .resizable()
                                        //  .scaledToFill()
                                        //.frame(width: 120, height: 120)
                                        //.clipShape(Circle())
                                        //  .padding()
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 200, height: 200)
                                        //.padding(15)
                                    }
                                    
                                    
                                }
                            }
                        }
                        else{
                            Image(systemName: "photo.cirlce")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 120, height: 120)
                                .clipShape(Circle())
                                .padding()
                            
                        }
                        PhotosPicker(selection: $maxselection, maxSelectionCount: 5, matching:
                                .any(of: [.images, .not(.videos)])) {
                                    Text("Select images")
                                        .font(.title2.bold())
                                        .frame(width: 200, height: 50)
                                        .background(Color.blue)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(15)
                                        .padding()
                                }
                                .onChange(of: maxselection) { newValue in
                                    Task {
                                        SelectedImage = []
                                        for value in newValue {
                                            if let imageData = try? await
                                                value.loadTransferable(type: Data.self), let image = UIImage(data: imageData) {
                                                SelectedImage.append(image)
                                            }
                                            
                                            
                                            
                                        }
                                        
                                    }
                                }
                    }
                }
            }
            
        }
        // .listStyle(InsetGroupedListStyle()) // عشان يخفي زر list
        //.navigationBarItems(trailing: Button(action: {}, label: {
        //  Image(systemName: "plus")
        //}))
    }
    
}


struct AddProject_Previews: PreviewProvider {
    static var previews: some View {
        AddProject()
    }
}
