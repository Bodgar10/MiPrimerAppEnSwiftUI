//
//  ContentView.swift
//  MiPrimerAppEnSwiftUI
//
//  Created by Bodgar Espinosa Miranda on 07/09/23.
//

import SwiftUI

struct IconAnimationView: View {
    var systemNameIcon: String
    @State private var colorChange = false
    @State private var sizeChange = false
    
    var body: some View {
        Image(systemName: systemNameIcon)
            .font(.system(size: 50))
            .foregroundColor(colorChange ? .yellow : .red)
            .scaleEffect(sizeChange ? 1.5 : 1.0)
            .onTapGesture {
                withAnimation {
                    self.colorChange.toggle()
                }
            }
            .onLongPressGesture {
                withAnimation {
                    self.sizeChange.toggle()
            }
        }
    }
}

struct HeartAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        IconAnimationView(systemNameIcon: "heart.fill")
    }
}
