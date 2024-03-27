//
//  Binding_view.swift
//  240327 Property Wrappers
//
//  Created by Luis on 27/3/24.
//

import SwiftUI

struct Binding_view: View {
    @Binding var resultado:Int
    @ObservedObject var miObjeto: MiClase
    var body: some View {
        Text("El valor es \(resultado)")
        Button("Suma 2"){
            resultado += 2
        }
        Text("Mi profe es \(miObjeto.nombre), y tiene \(miObjeto.edad) años")
        Button("Bajamos la edad"){
            miObjeto.nombre = "Pepe Sorli"
            miObjeto.edad -= 1
        }
    }
}

struct Binding_view_Previews: PreviewProvider {
    static var previews: some View {
        Binding_view(resultado: .constant(5), miObjeto: MiClase())
    }
}
