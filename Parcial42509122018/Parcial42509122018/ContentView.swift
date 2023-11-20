//
//  ContentView.swift
//  Parcial42509122018
//
//  Created by Manuel Alas on 19/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("fondo")
            VStack {
                ScrollView( showsIndicators: false){
                    Header()
                    ventas()
                    MenuSlider()
                }
            }
            .padding(.top, 50)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
