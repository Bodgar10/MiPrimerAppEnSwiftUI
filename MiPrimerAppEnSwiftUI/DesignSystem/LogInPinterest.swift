//
//  LogInPinterest.swift
//  MiPrimerAppEnSwiftUI
//
//  Created by Bodgar Espinosa Miranda on 07/09/23.
//

import SwiftUI
import Combine

struct LogInPinterest: View {
    @State private var emailText = ""
    @State private var passwordText = ""
    
    var body: some View {
        VStack {
            Text("BNS")
                .font(.system(size: 50))
                .bold()
                .foregroundColor(.white)
                .padding(.top, 50)
                .padding(.bottom, 34)
            HStack(alignment: .center, spacing: 16) {
                Image(systemName: "heart.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                TextField(
                    "Escribe tu correo...",
                    text: $emailText,
                    prompt: Text("Escribe tu correo...")
                        .foregroundColor(.white)
                )
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.white)
                .padding(.horizontal)
            }.padding()
            Divider()
                .overlay(.white)
                .padding(.horizontal)
            HStack(alignment: .center, spacing: 16) {
                Image(systemName: "heart.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                SecureField(
                    "Escribe tu contraseña",
                    text: $passwordText,
                    prompt: Text("*********")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                )
                .font(.system(size: 30))
                .foregroundColor(.white)
                .padding(.horizontal)
            }.padding()
            Button {
                
            }
            label: {
                Text("SIGN IN")
                    .font(
                        .system(
                            size: 20,
                            weight: .regular
                        )
                    )
                    .foregroundColor(.white)
            }
            .frame(height: 50)
            .frame(width: 350)
            .background(.white.opacity(0.2))
            .border(.white, width: 1)
            HStack(alignment: .center) {
                VStack {
                    Divider()
                        .overlay(.white)
                        .padding(.horizontal)
                }
                Text("or")
                    .foregroundColor(.white)
                VStack {
                    Divider()
                        .overlay(.white)
                        .padding(.horizontal)
                }
            }
            .padding(.top, 16)
            .padding(.bottom, 16)
            Button {
                
            }
            label: {
                Text("FACEBOOK CONNECT")
                    .font(
                        .system(
                            size: 20,
                            weight: .regular
                        )
                    )
                    .foregroundColor(.white)
            }
            .frame(height: 50)
            .frame(width: 350)
            .background(.white.opacity(0.0))
            .border(.white, width: 1)
            Spacer()
            Text("Don´t have an account?")
        }
        .background(
            LinearGradient(
            colors: [
                Color(red: 17/255, green: 58/255, blue: 105/255),
                Color(red: 20/255, green: 69/255, blue: 120/255),
                Color(red: 37/255, green: 118/255, blue: 176/255),
                Color(red: 41/255, green: 124/255, blue: 181/255)
            ],
            startPoint: .top,
            endPoint: .bottom
            )
        )
    }
}

struct LogInPinterest_Previews: PreviewProvider {
    static var previews: some View {
        LogInPinterest()
    }
}
