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

    var boton_agregar: (_ mombre: String, _ numero: String) -> Void = { nombre, numero in

        print("parece que te has equivocado")

    }
 
    var body: some View {
        
        ZStack {
            
            Color.richBlack
                .ignoresSafeArea()
            
            VStack {
                Text("Agrega un nuevo contacto")
                    .foregroundColor(.amarilloR)
                    .padding()
                    .fontWeight(Font.Weight.heavy)
                    .font(.custom("",size:25))
                
                Text("Colocar la etiqueta de nombre")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .foregroundColor(.amarilloR)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.frenchPlum.opacity(0.6))
                        .frame(maxWidth: 350, maxHeight: 75)
                    
                    TextField("placeholder", text: $nombre)
                        .padding()
                        .background(Color.clear)
                        .foregroundColor(.amarilloR)
                        .cornerRadius(10)
                        .frame(width: 350)
                }
                
                Text("Colocar el campo del número telefónico")
                
                    .font(.headline)
                    .frame(maxWidth: 350, alignment: .leading)
                    .padding(.horizontal)
                    .foregroundColor(.amarilloR)
                
                TextField("placeholder", text: $num_telefonico)
                    .frame(height: 45)
                    .padding()
                    .background(Color.frenchPlum.opacity(0.6))
                    .cornerRadius(10)
                    .frame(width: 350)
                    .foregroundColor(.amarilloR)
                Spacer()
                
                HStack(alignment: VerticalAlignment.center, spacing: 25){
                    
                    // Botón Agregar
                    
                    Icono(tamaño: 65, ruta_icono: "person.crop.circle.badge.plus", pading: 10)
                        .foregroundColor(.rosewood)
                        .onTapGesture {
                            boton_agregar(nombre, num_telefonico)
                        }
                    Spacer()
                    
                    // Botón regresar
                    
                    Icono(tamaño: 45, ruta_icono: "return", pading: 10)
                    
                        .foregroundColor(.amarilloR)
                        .background(nombre.isEmpty ? Color.rosewood : Color.cyan)
                        .clipShape(Circle())
                        .onTapGesture {
                            boton_salir()
                        }
                }
                
                .padding(.horizontal)
                .background(Color.amarilloR)
                .cornerRadius(10)
                .frame(maxWidth: .infinity)
                
            }
            
            .padding()
            
        }
        
    }

}

 

#Preview {
    pantallaAgregarContacto()
}
