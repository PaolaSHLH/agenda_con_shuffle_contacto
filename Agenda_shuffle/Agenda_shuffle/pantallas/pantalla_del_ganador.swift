//
//  pantalla_del_ganador.swift
//  Agenda_shuffle
//
//  Created by alumno on 5/3/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "Orion", telefono: "52525")

struct pantalla_del_ganador: View {
    var contacto_a_molestar: ContactoAgenda
    var body: some View {
        ZStack
        {
            Color.richBlack
            HStack{
                Spacer()
                
                
                VStack{
                    ZStack{
                        Circle()
                            .foregroundColor(.rosewood)
                            .frame(width: 150)
                        Image("Image")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 140)
                            .background(Color.alCrimson)
                            .clipShape(Circle())
                    }
                    .padding(20)
                    Text(contacto_a_molestar.nombre)
                        .font(.custom("",size:45))
                        .foregroundColor(.amarilloR)
                    Text(contacto_a_molestar.telefono)
                        .font(.custom("",size:25))
                        .foregroundColor(.amarilloR)
                    Spacer()
                    ZStack{
                        Circle()
                            .foregroundColor(.frenchPlum)
                            .frame(width: 80)
                        
                        Image(systemName: "phone.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            .foregroundColor(.amarilloR)
                            //.clipShape(Circle())
                    }
                    Spacer()
                }
                Spacer()
            }
        }
        
        
    }
}

#Preview {
    pantalla_del_ganador(contacto_a_molestar: contacto_alterno)
}
