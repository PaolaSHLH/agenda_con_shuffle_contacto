//
//  contacto_preview.swift
//  Agenda_shuffle
//
//  Created by alumno on 26/2/25.
//

import SwiftUI

struct ContactoPreview: View {
    var body: some View {
        HStack{
            Image(systemName: "person.crop.circle.fill")
            Text("Quiero un bolillo")
            Text("My lovely")
        }
    }
}

#Preview {
    ContactoPreview()
}
