//
//  SUpPage.swift
//  6.InstaRed
//
//  Created by Sherzod Fayziev on 2022/04/30.
//

import SwiftUI

struct SUpPage: View {
    
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var adress = ""
    @State var password = ""
    
    @Environment(\.presentationMode) var presenteation
    
    var body: some View {
        VStack(spacing: 15) {
            Spacer()
            TextField("Firstname", text: $firstname)
                .padding(.leading)
                .frame(height: 50)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(30)
                .padding(.horizontal)
            TextField("Lastname", text: $lastname)
                .padding(.leading)
                .frame(height: 50)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(30)
                .padding(.horizontal)
            TextField("Email", text: $email)
                .padding(.leading)
                .frame(height: 50)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(30)
                .padding(.horizontal)
            TextField("Adress", text: $adress)
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
                Text ("Sign Up")
                    Spacer()
                }
            })  .frame(height: 50)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(30)
                .padding(.horizontal)
                
            
            Spacer()
            Spacer()

            HStack {
                Text("Already have an account?")
                Button (action: {
                    
                }, label: {
                    Text ("Sign in")
                    
                } )
            }
        }     
    }
}
    

struct SUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SUpPage()
    }
}
