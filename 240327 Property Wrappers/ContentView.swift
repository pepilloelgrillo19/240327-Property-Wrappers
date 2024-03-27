//
//  ContentView.swift
//  240327 Property Wrappers
//
//  Created by Luis on 27/3/24.
//

import SwiftUI

class MiClase: ObservableObject{
    @Published var nombre = "Pepe"
    @Published var edad = 47
}

struct ContentView: View {
    @State private  var resultado = 0
    @State private  var seleccion:Int?
    @StateObject private var miObjeto = MiClase()
    var body: some View {
        NavigationView{
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("El valor es \(resultado)")
                Button("Suma 1"){
                    resultado += 1
                }
                Text("Mi profe es \(miObjeto.nombre), y tiene \(miObjeto.edad) años")
                Button("Subimos la edad"){
                    miObjeto.nombre = "Pepe Sorli"
                    miObjeto.edad += 1
                }
                NavigationLink(destination: Binding_view(resultado: $resultado, miObjeto: miObjeto), tag: 1, selection: $seleccion){
                    Button("Cambio de vista"){
                        seleccion = 1
                    }
                }
            }
            .padding()
        }.navigationTitle("ContentView")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
