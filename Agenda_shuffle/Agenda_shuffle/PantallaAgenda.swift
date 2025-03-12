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
enum PantallasDisponibles: String, Identifiable{
    case pantalla_agregar, pantalla_del_ganador
    
    var id: String {
        rawValue
    }
}

struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    @State var contactoGanador: ContactoAgenda? = nil //seleccion aleatoria de uno de los contactos
    
    @State var contactos_Actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre: "Chanyeol", telefono: "610497"),
        ContactoAgenda(nombre: "Sehun", telefono: "123576"),
        ContactoAgenda(nombre: "Baekhyun", telefono: "049925"),
        ContactoAgenda(nombre: "Suho", telefono: "610497")
]
    @State var mostrar_pantalla_agregar_contacto: Bool = false
    
    @State var pantalla_a_mostrar: PantallasDisponibles?
    
    var body: some View {
        NavigationStack{
            
        
        
        ScrollView{
                Text("Agenda Contactos")
                    .foregroundColor(.amarilloR)
                    .font(.title)
                    .fontWeight(.bold)
            VStack(spacing:10){
                ForEach(contactos_Actuales){ contacto in
                    NavigationLink{
                        Text("Hola mundo")
                    } label: {
                        ContactoPreview(contacto_a_mostrar: contacto, alPulsar: {print("te envia saludos \(contacto.nombre) desde la pantalla de agenda")})
                    }
                    
                }
            }
            
            .frame(alignment: Alignment.center)
            .padding(10)
            //.background(Color.mint)
        }
        .background(Color.richBlack)
        
    }
        
        
        
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundColor(.alCrimson)
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .foregroundColor(.white)
                    //.offset(x: 0, y: -25)
               
                
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar esta parte")
                pantalla_a_mostrar = PantallasDisponibles.pantalla_agregar
            
            }
            Spacer()
            //Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundColor(.alCrimson)
                /*Circle()
                    .foregroundColor(.indigo)
                    .frame(width: 65,height: 65)*/
                Image(systemName: "shuffle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .foregroundColor(.white)
                    //.offset(x: 0, y: -25)
               
                
            }
            .padding(15)
            .onTapGesture {
                if let contactoSelected = contactos_Actuales.randomElement(){
                    contactoGanador = contactoSelected
                    pantalla_a_mostrar = PantallasDisponibles.pantalla_del_ganador
                }
                //print("lanzar un intent para iniciar la llamada")
            }
        }
        .background(Color.cetaBlue)
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
        .sheet(item: $pantalla_a_mostrar){ pantalla in
            switch(pantalla){
            case .pantalla_agregar:
                pantallaAgregarContacto (
                    boton_salir: {
                        pantalla_a_mostrar = nil
                    },
                    
                    boton_agregar: { nombre, numero in
                        let contacto_nuevo = ContactoAgenda (nombre: nombre, telefono: numero)
                        contactos_Actuales.append(contacto_nuevo)
                        pantalla_a_mostrar = nil
                    }
                )
            case .pantalla_del_ganador:
                if let contacto = contactoGanador{
                    pantalla_del_ganador(contacto_a_molestar: contacto)
                }else{
                    Text("Adios mundo, no se puede molestar a nadie u.u")
                }
            }
        }
    }
}

#Preview {
    PantallaAgenda()
}
