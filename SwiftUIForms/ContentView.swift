//
//  ContentView.swift
//  SwiftUIForms
//
//  Created by Ngo Dang tan on 21/01/2021.
//

import SwiftUI
class FormViewModel: ObservableObject {
    @State var firstName = ""
    @State var lastName = ""
    @State var password = ""
    @State var passwordAgain = ""
}
struct ContentView: View {
  
    @StateObject var viewModel = FormViewModel()
    var body: some View {
   
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("First Name", text: $viewModel.firstName)
                        TextField("Last Name", text: $viewModel.lastName)
                    }
                    Section(footer: Text("Your password must be at least 8 characters long.")) {
                        
                        SecureField("Create Password", text: $viewModel.password)
                        SecureField("Confirm Password", text: $viewModel.passwordAgain)
                    }
                    Section(header: Text("Mailing Address")) {
                        TextField("Street Address", text: $viewModel.firstName)
                        TextField("City", text: $viewModel.firstName)
                        TextField("State", text: $viewModel.firstName)
                        TextField("Postal Code", text: $viewModel.firstName)
                        TextField("Country", text: $viewModel.firstName)
                    }
                 
                }
                Divider()
                Button(action: {
                    //do something with form data
                }, label: {
                    Text("Continue")
                        .frame(width: 250, height: 50, alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                .padding()
            }
            .navigationTitle("Create Account")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
