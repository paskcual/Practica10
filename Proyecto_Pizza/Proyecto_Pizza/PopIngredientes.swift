import UIKit

class PopIngredientes: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var Popupview: UIView!
    
    
    var names: [String] =
        ["Jamon", "Pepperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Piña", "Anchoa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Le aplicamos un radio al Popupview
        Popupview.layer.cornerRadius = 10
        Popupview.layer.masksToBounds = true
        
    }
    
    
    // Regresa el conteo de los objetos en el tableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count;
    }
    
    
    // Selecciona el objeto desde el tableView
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Número seleccionado: " + names[indexPath.row])
            
            if(Shared.shared.ingredienteYaSeleccionado[0] == "" && names[indexPath.row] == "Jamon"){
                Shared.shared.ingredienteYaSeleccionado[0] = names[indexPath.row]
                Shared.shared.ingrediente = Shared.shared.ingrediente + 1
            }else if(Shared.shared.ingredienteYaSeleccionado[1] == "" && names[indexPath.row] == "Pepperoni"){
                  Shared.shared.ingredienteYaSeleccionado[1] = names[indexPath.row]
                  Shared.shared.ingrediente = Shared.shared.ingrediente + 1
            }else if(Shared.shared.ingredienteYaSeleccionado[2] == "" && names[indexPath.row] == "Pavo"){
                Shared.shared.ingredienteYaSeleccionado[2] = names[indexPath.row]
                  Shared.shared.ingrediente = Shared.shared.ingrediente + 1
            }else if(Shared.shared.ingredienteYaSeleccionado[3] == "" && names[indexPath.row] == "Salchicha"){
                Shared.shared.ingredienteYaSeleccionado[3] = names[indexPath.row]
                  Shared.shared.ingrediente = Shared.shared.ingrediente + 1
            }else if(Shared.shared.ingredienteYaSeleccionado[4] == "" && names[indexPath.row] == "Aceituna"){
                Shared.shared.ingredienteYaSeleccionado[4] = names[indexPath.row]
                  Shared.shared.ingrediente = Shared.shared.ingrediente + 1
            }else if(Shared.shared.ingredienteYaSeleccionado[5] == "" && names[indexPath.row] == "Cebolla"){
                Shared.shared.ingredienteYaSeleccionado[5] = names[indexPath.row]
                  Shared.shared.ingrediente = Shared.shared.ingrediente + 1
            }else if(Shared.shared.ingredienteYaSeleccionado[6] == "" && names[indexPath.row] == "Pimiento"){
                Shared.shared.ingredienteYaSeleccionado[6] = names[indexPath.row]
                  Shared.shared.ingrediente = Shared.shared.ingrediente + 1
            }else if(Shared.shared.ingredienteYaSeleccionado[7] == "" && names[indexPath.row] == "Piña"){
                Shared.shared.ingredienteYaSeleccionado[7] = names[indexPath.row]
                  Shared.shared.ingrediente = Shared.shared.ingrediente + 1
            }else if(Shared.shared.ingredienteYaSeleccionado[8] == "" && names[indexPath.row] == "Anchoa"){
                Shared.shared.ingredienteYaSeleccionado[8] = names[indexPath.row]
                  Shared.shared.ingrediente = Shared.shared.ingrediente + 1
        }
     
       
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(newViewController, animated: true, completion: nil)
        
    }
    
    // Asigna los valores al tableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    // Cerramos el PopUp
    @IBAction func closePopup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}



