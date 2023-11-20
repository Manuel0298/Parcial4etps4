//
//  MenuSlider.swift
//  Parcial42509122018
//
//  Created by Manuel Alas on 19/11/23.
//
import SwiftUI
let nombres = ["La correcta","tortas de Jamon", "Super Combo", "Combo Burger", "Combo Personal"]
let cali = ["⭐️","⭐️⭐️","⭐️⭐️⭐️","⭐️⭐️⭐️⭐️","⭐️⭐️⭐️⭐️⭐️"]
let preci = [ "$12.99", "$15.99", "$7.99", "$20.99", "$9.99"]
struct MenuSlider: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("Burgers")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 10)
            }

            HStack {
                ForEach(1..<6) { i in
                    MenuCard(imagenNombre: "Combo\(i)", titulo: nombres[i-1], calificacion: cali[i-1], precio: preci[i-1])
                        .foregroundColor(.black)
                        .shadow(radius: 10)
                }
            }
        }
    }
}

struct MenuSlider_Previews: PreviewProvider {
    static var previews: some View {
        MenuSlider()
    }
}
