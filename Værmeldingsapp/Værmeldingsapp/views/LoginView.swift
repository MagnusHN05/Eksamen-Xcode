//
//  LoginView.swift
//  Værmeldingsapp
//
//  Created by Magnus Holth Nysveen on 09/06/2023.
//

import SwiftUI

struct LoginView: View {
@State private var username = ""
@State private var password = ""
@State private var wrongusername = 0
@State private var wrongpassword = 0
@State private var showingLoginScreen = false
    
var body: some View{
NavigationView{
ZStack{

Color.blue
.ignoresSafeArea()
Circle()
.scale(1.7)
.foregroundColor(.white.opacity(0.15))
Circle()
.scale(1.35)
.foregroundColor(.white)
VStack{
Text("Login")
.font(.largeTitle)
.bold()
.padding()
TextField("Brukernavn", text:$username)
.padding()
.frame(width: 300, height: 50)
.background(Color.black.opacity(0.05))
.cornerRadius(10)
.border(.red, width: CGFloat(wrongusername))
SecureField("Passord", text:$password)
.padding()
.frame(width: 300, height: 50)
.background(Color.black.opacity(0.05))
.cornerRadius(10)
.border(.red, width: CGFloat(wrongpassword))
Button("Login"){
//autoriser brukeren
autheticateUser(username: username, password: password)
}
.foregroundColor(.white)
.frame(width: 300,height: 50)
.background(Color.blue)
.cornerRadius(10)


NavigationLink(destination: ContentView(), isActive: $showingLoginScreen){
EmptyView()
}
}
}
}
}

func autheticateUser(username: String, password: String) {
if username.lowercased() == "magnus"{
wrongusername = 0
if password.lowercased() == "magnus"{
wrongpassword = 0
showingLoginScreen = true // true når login er riktig
}
else{
wrongpassword = 2
}
}
else {
wrongusername = 2
}
}
}

struct LoginView_Previews: PreviewProvider {
static var previews: some View {
LoginView()
}
}
