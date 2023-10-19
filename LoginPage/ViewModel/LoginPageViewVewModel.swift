//
//  LoginPageViewVewModel.swift
//  LoginPage
//
//  Created by Tufail Ahmad on 19/10/23.
//

import Foundation

class LoginPageViewVewModel : ObservableObject{
    @Published var username = ""
    @Published var Mobile = ""
    @Published var  password = ""
    @Published var confirmPassword = " "
    @Published var  errorMessage = ""
    init(){}
    
    
    func login(){
        guard validate()  else {
            return
        }
        print("Login successful")
        
    }
    func validate()-> Bool {
        errorMessage = ""
        guard username.contains("@") && username.contains(".") else {
            errorMessage = "Please enter valid email"
            return false
            
        }
        guard Mobile.count > 10 else{
            errorMessage = " Please enter valid phone number"
            return false
            }
        guard password.count > 7 else {
            errorMessage = "Keep Strong password"
            return false
        }
        guard confirmPassword == password else {
            errorMessage = "Password does not match"
            return false
        }
       
        return true
        }
    }


