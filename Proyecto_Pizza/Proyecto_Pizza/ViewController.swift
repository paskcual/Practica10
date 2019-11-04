//
//  ViewController.swift
//  Proyecto_Pizza
//
//  Created by moviles on 28/10/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblPizaFinal: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
          let tamanioPizza : String = Shared.shared.tamanioPizza ?? ""
          let tipoMasa : String = Shared.shared.tipoMasa ?? ""
          let tipoQueso : String = Shared.shared.tipoQueso ?? ""
          //let ingrediente: String = Shared.shared.ingrediente ?? ""
        var guardarTodoElArreglo: String = ""
        
        var bandera = 0
        for ingrediente in Shared.shared.ingredienteYaSeleccionado{
            if(bandera == 0){
                   guardarTodoElArreglo =  ingrediente
                bandera = 1
            }else{
                guardarTodoElArreglo = guardarTodoElArreglo + " " +  ingrediente
                
            }
         
        }
        lblPizaFinal.text = ("Tamaño: " + tamanioPizza + "\n Tipo de Masa: " + tipoMasa + " \nTipo de Queso: " + tipoQueso + " \nIngredientes: " + guardarTodoElArreglo)
        //lblPizaFinal.text = String(guardarTodoElArreglo)
    }


    @IBAction func btnCancelarAction(_ sender: Any) {
     lblPizaFinal.text = ("Tamaño: "  + "\n Tipo de Masa: "  + " \nTipo de Queso: " + " \nIngredientes: " )
           Shared.shared.ingrediente = 0
           Shared.shared.tipoQueso = ""
           Shared.shared.tipoMasa = ""
           Shared.shared.tamanioPizza = ""
        
        var i = 0
        let c = ""
        for _ in Shared.shared.ingredienteYaSeleccionado{
            
            Shared.shared.ingredienteYaSeleccionado[i] = c
       
            i = i + 1
        }
    }
    
    @IBAction func btnAceptarAction(_ sender: Any) {
        let tamanioPizza : String = Shared.shared.tamanioPizza ?? ""
        let tipoMasa : String = Shared.shared.tipoMasa ?? ""
        let tipoQueso : String = Shared.shared.tipoQueso ?? ""
        let numIngre : Int = Shared.shared.ingrediente
        if(tamanioPizza == "" || tipoQueso == "" || tipoMasa == ""){
         showToast(message: "Deben estar todos los datos llenos")
        }else if(numIngre == 0  || numIngre > 6){
             showToast(message: "Almenos 1 ingrediente y no mas de 5")
        }else{
             showToast(message: "Su pizza estarà por prepararse!")
        }
    }
    
    func showToast(message : String) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 175, y: self.view.frame.size.height-100, width: 350, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: "Montserrat-Light", size: 8.0)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}

