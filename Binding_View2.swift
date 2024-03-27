//
//  Binding_View2.swift
//  240327 Property Wrappers
//
//  Created by Luis on 27/3/24.
//

import SwiftUI



struct Binding_View2: View {
    @ObservedObject var resultado:ElResultado
    @State private  var seleccion:Int?
    var body: some View {
            NavigationView{
                VStack{
                    Text("Esta es la vista 3")
                    Text("El valor es \(resultado.resultadoClase)")
                    Button("Suma 3"){
                        resultado.resultadoClase += 3
                    }
                    NavigationLink(destination: ContentView(resultado: resultado), tag: 3, selection: $seleccion){
                        Button("Paso a ContentView"){
                            seleccion = 1
                        }
                    }
                }
            }
        }
    }


struct Binding_View2_Previews: PreviewProvider {
    static var previews: some View {
        Binding_View2(resultado: ElResultado())
    }
}
