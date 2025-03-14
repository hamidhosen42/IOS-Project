//
//  ViewController.swift
//  Pick-a-Pal
//
//  Created by Project2Morrow on 8/3/25.
//

import SwiftUI


struct ContentView: View {
    @State private var names: [String] = ["Elisha", "Andre", "Jasmine", "Po-Chun"]
    @State private var nameToAdd = ""
    @State private var pickedName = ""
    @State private var removeWhenPicked: Bool = false
    
    var body: some View {
        VStack {
            
            VStack{
                Image(systemName: "person.3.sequence.fill")
                    .foregroundStyle(.tint)
                    .symbolRenderingMode(.hierarchical)
                Text("Pick-a-Pal")
            }
            .font(.title)
            .bold()
            
            
            Text(pickedName.isEmpty ? " " : pickedName)
                .font(.title2)
                .foregroundStyle(.tint)
                .bold()
            
            List {
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            TextField("Add Name",text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    if !nameToAdd.isEmpty{
                        names.append(nameToAdd)
                        nameToAdd = ""
                    }
                }
            
            Divider()
            
            Toggle("Remove When picked",isOn: $removeWhenPicked)
            
            Button{
                if let randomName = names.randomElement(){
                    pickedName=randomName
                    
                    if removeWhenPicked{
                        names.removeAll{ name in
                            return (name==randomName)
                        }
                    }
                }else{
                    pickedName=""
                }
            }label: {
                Text("Pick Random Name")
                    .padding(.vertical,5)
                    .padding(.horizontal,16)
            }
            .buttonStyle(.borderedProminent)
            .font(.title3)
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
