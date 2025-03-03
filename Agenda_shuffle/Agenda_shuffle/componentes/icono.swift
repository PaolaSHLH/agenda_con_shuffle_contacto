//
//  icono.swift
//  Agenda_shuffle
//
//  Created by alumno on 3/3/25.
//

import SwiftUI

struct Icono: View {
    var tamaño : CGFloat
    var ruta_icono : String
    var pading : CGFloat = 10
    var body: some View {
        Image(systemName: ruta_icono)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: tamaño, height: tamaño)
            .padding(pading)
    }
}

#Preview {
    Icono(tamaño: 50, ruta_icono: "plus")
}
