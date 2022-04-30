//
//  SignInPage.swift
//  6.InstaRed
//
//  Created by Sherzod Fayziev on 2022/04/30.
//

import SwiftUI

struct SignInPage: View {
    
    @State var email = ""
    @State var password = ""
    @State var SUPage = true
    
    var body: some View {
        NavigationView{
        VStack(spacing: 15) {
            Spacer()
           
            Image("Main")
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(100)
            TextField("Email", text: $email)
                .padding(.leading)
                .frame(height: 50)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(30)
                .padding(.horizontal)
            SecureField("Password", text: $password)
                .padding(.leading)
                .frame(height: 50)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(30)
                .padding(.horizontal)
            Button (action: {
                
            }, label: {
                HStack {
                    Spacer()
                Text ("Log in")
                    Spacer()
                }
            })  .frame(height: 50)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(30)
                .padding(.horizontal)
                
            
            Spacer()
                .frame(height: 250.0)
         
            HStack {
                Text("Don't have an account?")
                    NavigationLink(destination: SUpPage()) {
                        Text("Sign up")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            
                            
                    }
                }
        }.navigationBarTitle("Instagram", displayMode: .inline)

        }
        
    }
}

struct SignInPage_Previews: PreviewProvider {
    static var previews: some View {
        SignInPage()
    }
}
