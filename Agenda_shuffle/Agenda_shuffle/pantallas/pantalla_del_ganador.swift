//
//  pantalla_del_ganador.swift
//  Agenda_shuffle
//
//  Created by alumno on 5/3/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "orion", telefono: "52525")

struct pantalla_del_ganador: View {
    var contacto_a_molestar: ContactoAgenda
    var body: some View {
        
        HStack{
            ZStack{
                Circle()
                    .foregroundColor(.purple)
                    .frame(width: 150)
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            }
            VStack{
                Text(contacto_a_molestar.nombre)
                Text(contacto_a_molestar.telefono)
            }
        }
        
    }
}

#Preview {
    pantalla_del_ganador(contacto_a_molestar: contacto_alterno)
}
