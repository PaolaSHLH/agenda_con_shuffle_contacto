//
//  PantallaAgenda.swift
//  Agenda_shuffle
//
//  Created by alumno on 26/2/25.
//

import SwiftUI

struct PantallaAgenda: View {
    var body: some View {

        List{
            VStack{
                ForEach(0...45, id: \.self){ _ in
                    ContactoPreview()
                }
            }
            .background(Color.mint)
        }
        
        
    }
}

#Preview {
    PantallaAgenda()
}
