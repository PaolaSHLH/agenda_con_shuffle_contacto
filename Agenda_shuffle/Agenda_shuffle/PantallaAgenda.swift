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
            
            .frame(alignment: Alignment.center)
            .padding(10)
            .background(Color.mint)

        }
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundColor(.mint)
                Rectangle()
                    .frame(width: 65,height: 65)
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    //.offset(x: 0, y: -25)
               
                
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar esta parte")
            
            }
            Spacer()
            //Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundColor(.mint)
                Rectangle()
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
        //.background(Color.red)
    }
}

#Preview {
    PantallaAgenda()
}
