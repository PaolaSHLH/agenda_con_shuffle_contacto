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
    
    var boton_salir: () -> Void = {
        print("parece que te has equivocado")
    }
    var boton_agregar: (_ mombre: String,_ numero: String) -> Void = { nombre, numero in
        print("parece que te has equivocado")

    }
    
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
        TextField("placeholder", text: $num_telefonico)
            .frame(height: 45)
            .padding(10)
        
        HStack{
            //Agregar Cont
            Icono(tamaño: 65, ruta_icono: "person.crop.circle.badge.plus", pading: 10)
                .onTapGesture {
                    boton_agregar(nombre, num_telefonico)
                }
            Spacer()
            Icono(tamaño: 65, ruta_icono: "return", pading: 10)
                .background(nombre == "" ? Color.red: Color .cyan)
                .onTapGesture {
                    boton_salir()
                }
            
        }
        
    }
}

#Preview {
    pantallaAgregarContacto()
}
