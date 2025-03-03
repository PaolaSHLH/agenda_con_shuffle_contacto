//
//  pantallaAgregar_contacto.swift
//  Agenda_shuffle
//
//  Created by alumno on 3/3/25.
//

import SwiftUI

struct pantallaAgregarContacto: View {
    
    @State private var nombre: String = ""
    @State private var num_telefonico: String = ""
    var body: some View {
        
        Text("colocar la etiqueta de nombre")
        ZStack{
            Rectangle()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: 75)
                .foregroundColor(.gray)
            TextField("placeholder", text: $nombre)
                //.border(Rectangle, width: 15)
                .padding(10)
                
        }
        
        
        Text(verbatim: "Colocar el campo del numero telefonico")
        TextField("placeholder", text: $nombre)
            .frame(height: 45)
            .padding(10)
        
        HStack{
            Icono(tamaño: 65, ruta_icono: "person.crop.circle.badge.plus", pading: 10)
            Spacer()
            Icono(tamaño: 65, ruta_icono: "return", pading: 10)
                .background(nombre == "" ? Color.red: Color .cyan)
            
        }
        
    }
}

#Preview {
    pantallaAgregarContacto()
}
