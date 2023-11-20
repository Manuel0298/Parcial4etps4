import SwiftUI

struct ventas: View {
    let categorias = [
        ("Hamburguesa", "Cate1"),
        ("Pizza", "Cate2"),
        ("Pollo", "Cate3")
    ]

    @State private var selectedIndex = 0

    var body: some View {
        VStack(alignment: .leading) {
            Text("Ventas")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 10)
                .padding(.horizontal, 10)

            HStack(spacing: 20) {
                ForEach(categorias.indices) { index in
                    VStack {
                        Button(action: {
                            selectedIndex = index
                            // Acción del botón
                        }) {
                            Image(categorias[index].1)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .aspectRatio(contentMode: .fit)
                        }
                        .buttonStyle(BorderedButtonStyle(selected: index == selectedIndex))
                        .padding(.bottom, 5)
                        
                        Text(categorias[index].0)
                            .font(.caption)
                    }
                    .padding(.horizontal, 10)
                }
            }
            .padding(.top, 10)
        }
        .onAppear {
            // Selecciona el primer botón por defecto
            selectedIndex = 0
        }
    }
}

struct BorderedButtonStyle: ButtonStyle {
    var selected: Bool

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(selected ? Color.blue : Color.clear, lineWidth: 2)
            )
    }
}

struct Ventas_Previews: PreviewProvider {
    static var previews: some View {
        ventas()
    }
}

