//
//  PantallaAgenda.swift
//  Agenda_shuffle
//
//  Created by alumno on 26/2/25.
//

import SwiftUI

var contactos = [
    ContactoAgenda(nombre: "Chanyeol", telefono: "610497"),
    ContactoAgenda(nombre: "Sehun", telefono: "123576"),
    ContactoAgenda(nombre: "Baekhyun", telefono: "049925")

    
]

struct PantallaAgenda: View {
    var body: some View {

        List{
            VStack{
                ForEach(contactos){ contacto in
                    Text("\(contacto.nombre)")
                }
            }
            .background(Color.mint)
        }
        
        
    }
}

#Preview {
    PantallaAgenda()
}
