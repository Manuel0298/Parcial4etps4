//
//  Header.swift
//  Parcial42509122018
//
//  Created by Manuel Alas on 19/11/23.
//

import SwiftUI

struct Header: View {
    @State private var buscar: String = ""
    var body: some View {
        HStack{
            ZStack{
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                    
                    TextField("Buscar Tu Combo...", text: $buscar)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(.top, 10)
                        .font(.headline)
                        .background(Color.white)
                        .cornerRadius(20)
                        .padding(10)
                    
                    
                }
                
                
            }
            
            
        }

    }
    
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
