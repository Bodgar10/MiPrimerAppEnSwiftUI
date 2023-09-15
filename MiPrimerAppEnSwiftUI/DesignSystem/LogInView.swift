//
//  LogInView.swift
//  MiPrimerAppEnSwiftUI
//
//  Created by Bodgar Espinosa Miranda on 07/09/23.
//

import SwiftUI

struct LogInView: View {
    @State private var emailText = ""
    @State private var passwordText = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Spacer()
            TextFieldCustom(
                placeholder: "Escribe tu correo...",
                textInput: $emailText
            )
            SecureTextFieldCustom(
                placeholder: "Escribe tu contraseña...",
                textInput: $passwordText
            )
            Spacer()
            PrincipalButton {
                print("Test")
            }
        }
    }
}

extension View {
    func makeBorder(with color: Color) -> some View {
        self
            .padding(10)
            .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(color, lineWidth: 2)
            }
            .padding(.horizontal)
    }
}

struct TextFieldCustom: View {
    var placeholder: String
    @Binding var textInput: String
    
    var body: some View {
        TextField(
            placeholder,
            text: $textInput,
            prompt: Text(placeholder)
                .foregroundColor(.blue)
        )
        .makeBorder(with: .blue)
    }
}

struct SecureTextFieldCustom: View {
    var placeholder: String
    @Binding var textInput: String
    
    var body: some View {
        SecureField(
            placeholder,
            text: $textInput,
            prompt: Text(placeholder)
                .foregroundColor(.red)
        )
        .makeBorder(with: .red)
    }
}

struct PrincipalButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("Inicia sesión")
                .font(.title2)
                .bold()
                .foregroundColor(.white)
        }
        .frame(height: 50)
        .frame(maxWidth: .infinity)
        .background(
            LinearGradient(
            colors: [
                .blue,
                .red
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
            )
        )
        .cornerRadius(20)
        .padding()
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
