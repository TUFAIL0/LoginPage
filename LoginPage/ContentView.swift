//
//  ContentView.swift
//  LoginPage
//
//  Created by Tufail Ahmad on 13/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var uname = ""
    @State var pwd = ""
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            VStack{
                Image(systemName: "globe.central.south.asia.fill")
                    .resizable(resizingMode: .tile)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ , height: 100)
                    .padding(20)
                
                VStack {
                    Text("Login Page")
                        .foregroundStyle(.white)
                        .font(.title)
                    
                    HStack{
                        Text("Username")
                            .foregroundStyle(.blue)
                            .font(.title2)
                        TextField("Registered Email",text:  $uname)
                            .font(.title2)
                    }.padding()
                        .border(Color.black, width: 5)
                    
                    HStack{
                        Text("Mobile")
                            .foregroundStyle(.blue)
                            .font(.title2)
                        TextField("Mobile number",text:  $uname)
                            .font(.title2)
                    }.padding()
                        .border(Color.black, width: 5)
                    
                    HStack{
                        Text("Password")
                            .foregroundStyle(.blue)
                            .font(.title2)
                        SecureField("Password",text:  $pwd)
                            .font(.title2)
                    }.padding()
                        .border(Color.black, width: 5)
                    HStack{
                        Text("Re-enter password")
                            .foregroundStyle(.blue)
                            .font(.title2)
                        SecureField("Password",text:  $pwd)
                            .font(.title2)
                    }.padding()
                        .border(Color.black, width: 5)
                    
                    
                    HStack{
                        Button("Login"){
                            print("Username \(uname)")
                            print("password \(pwd)")
                        }
                        .frame(width: 150 , height: 40)
                        .background(Color.white)
                        .border(.white, width: 3)
                        
                        HStack{
                            Button("Cancel"){
                                print("Username \(uname)")
                                print("password \(pwd)")
                            }
                            .frame(width: 150 , height: 40)
                            .background(Color.white)
                            .border(.white, width: 3)
                            .foregroundStyle(.red)
                            .clipShape(.capsule, style: FillStyle())
                        }
                    }
                    
                }
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
