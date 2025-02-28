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
    ContactoAgenda(nombre: "Baekhyun", telefono: "049925"),
    ContactoAgenda(nombre: "Suho", telefono: "610497"),
    ContactoAgenda(nombre: "Kai", telefono: "123576"),
    ContactoAgenda(nombre: "D.O", telefono: "049925"),
    ContactoAgenda(nombre: "Lay", telefono: "610497"),
    ContactoAgenda(nombre: "Xiumin", telefono: "123576"),
    ContactoAgenda(nombre: "Chen", telefono: "049925")



    
]

struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    var body: some View {

        ScrollView{
            VStack(spacing:10){
                ForEach(contactos){ contacto in
                    //Text("\(contacto.nombre)")
                    ContactoPreview(contacto_a_mostrar: contacto, alPulsar: {print("te envia saludos \(contacto.nombre) desde la pantalla de agenda")})
                }
            }
            .background(Color.mint)
            .frame(width: largo_de_pantalla, alignment: Alignment.center)

        }
        .background(Color.red)
    }
}

#Preview {
    PantallaAgenda()
}
