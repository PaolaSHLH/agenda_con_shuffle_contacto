//
//  contacto_preview.swift
//  Agenda_shuffle
//
//  Created by alumno on 26/2/25.
//

import SwiftUI
let contacto_prueba = ContactoAgenda(nombre:"Chanyeol", telefono: "789654")

let esquinasRedondeadas = CGSize(width: 55, height: 55)

struct ContactoPreview: View {
    var contacto_a_mostrar: ContactoAgenda
    var alPulsar : () -> Void = {print("No se ha implementado")}
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center, spacing: 10){
            Spacer()
            VStack{
                Image("imagen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60, alignment: .center)
                    .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
            }//.background(Color.white)
            
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 10){
                Text(contacto_a_mostrar.nombre)
                Text(contacto_a_mostrar.telefono)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.indigo)
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
        .onTapGesture {
            alPulsar()
        }
    }
}

#Preview {
    ContactoPreview(contacto_a_mostrar: contacto_prueba)
}
