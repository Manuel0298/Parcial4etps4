//
//  MenuCard.swift
//  Parcial42509122018
//
//  Created by Manuel Alas on 19/11/23.
//

import SwiftUI

struct MenuCard: View {
    let imagenNombre: String
    let titulo: String
    let calificacion: String
    let precio: String

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(imagenNombre)
                .resizable()
                .frame(width: 150, height: 190)
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(titulo)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.black)
                
                Text(calificacion)
                    .font(.system(size: 10))
                    .foregroundColor(.black)
                
                Text(precio)
                    .font(.system(size: 10))
                    .foregroundColor(.black)
            }
            .padding(10)
        }
        .shadow(radius: 10)
    }
}

struct MenuCard_Previews: PreviewProvider {
    static var previews: some View {
        MenuCard(imagenNombre: "Combo1", titulo: "Doble Carne", calificacion: "⭐️⭐️⭐️⭐️⭐️", precio: "$10.99")
            .foregroundColor(.black)
    }
}
