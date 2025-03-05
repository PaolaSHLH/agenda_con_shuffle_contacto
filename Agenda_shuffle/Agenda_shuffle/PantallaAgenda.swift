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
    
    @State var contactos_Actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre: "Chanyeol", telefono: "610497"),
        ContactoAgenda(nombre: "Sehun", telefono: "123576"),
        ContactoAgenda(nombre: "Baekhyun", telefono: "049925"),
        ContactoAgenda(nombre: "Suho", telefono: "610497")
]
    @State var mostrar_pantalla_agregar_contacto: Bool = false
    
    var body: some View {

        ScrollView{
            VStack(spacing:10){
                ForEach(contactos_Actuales){ contacto in
                    //Text("\(contacto.nombre)")
                    ContactoPreview(contacto_a_mostrar: contacto, alPulsar: {print("te envia saludos \(contacto.nombre) desde la pantalla de agenda")})
                }
            }
            
            .frame(alignment: Alignment.center)
            .padding(10)
            .background(Color.mint)

        }
        .background(Color.pink)
        
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundColor(.mint)
                Circle()
                    .foregroundColor(.indigo)
                    .frame(width: 65,height: 65)
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    //.offset(x: 0, y: -25)
               
                
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar esta parte")
                mostrar_pantalla_agregar_contacto.toggle()
            
            }
            Spacer()
            //Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundColor(.mint)
                Circle()
                    .foregroundColor(.indigo)
                    .frame(width: 65,height: 65)
                Image(systemName: "shuffle")
                    .foregroundColor(.white)
                    //.offset(x: 0, y: -25)
               
                
            }
            .padding(15)
            .onTapGesture {
                print("lanzar un intent para iniciar la llamada")
            
            }
        }
        .background(Color.purple)
        .sheet(isPresented: $mostrar_pantalla_agregar_contacto) {
            pantallaAgregarContacto(boton_salir: {mostrar_pantalla_agregar_contacto.toggle()
            },
                                    boton_agregar: {nombre, numero in
                let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero)
                contactos_Actuales.append(contacto_nuevo)
                mostrar_pantalla_agregar_contacto.toggle()
            }
            )
        }
    }
}

#Preview {
    PantallaAgenda()
}
