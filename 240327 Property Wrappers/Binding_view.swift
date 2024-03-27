//
//  Binding_view.swift
//  240327 Property Wrappers
//
//  Created by Luis on 27/3/24.
//

import SwiftUI

struct Binding_view: View {
    @ObservedObject var resultado:ElResultado
    @ObservedObject var miObjeto: MiClase
    @State private  var seleccion:Int?
    var body: some View {
        NavigationView{
            VStack{
                Text("Esta es la vista 2")
                Text("El valor es \(resultado.resultadoClase)")
                Button("Suma 2"){
                    resultado.resultadoClase += 2
                }
                Text("Mi profe es \(miObjeto.nombre), y tiene \(miObjeto.edad) años")
                Button("Bajamos la edad"){
                    miObjeto.nombre = "Pepe Sorli"
                    miObjeto.edad -= 1
                }
                NavigationLink(destination: Binding_View2(resultado: resultado), tag: 2, selection: $seleccion){
                    Button("Cambio de vista a 3"){
                        seleccion = 2
                    }
                }
            }
        }
    }
}

struct Binding_view_Previews: PreviewProvider {
    static var previews: some View {
        Binding_view(resultado: ElResultado(), miObjeto: MiClase())
    }
}
