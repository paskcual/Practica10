import Foundation

final class Shared {
    static let shared = Shared()
    
    var tamanioPizza : String!
    var tipoMasa : String!
    var tipoQueso : String!
    var ingrediente = 0
    //var ingredienteYaSeleccionado = [String]()
   // var ingredienteYaSeleccionado: Array = [String]Array(repeating: 0, count: 1000)
    var ingredienteYaSeleccionado: [String] =
        ["", "", "", "", "", "", "", "", ""]
    
}
