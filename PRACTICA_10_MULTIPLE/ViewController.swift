

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBOutlet weak var lblTamanio: UILabel!
    
    
    @IBAction func cambiaVista(_ sender: UIButton) {
        
        if(lblTamanio.text != ""){
            performSegue(withIdentifier: "vista1", sender: self
            )
            
        }
        
    }
    
    @IBAction func seleccionTama(_ sender:UISegmentedControl) {
        
        
        switch sender.selectedSegmentIndex {
        case 1:
            lblTamanio.text = "Chica"
        case 2:
                lblTamanio.text = "Mediana"
        case 3:
                    lblTamanio.text = "Grande"
        default:
            lblTamanio.text = ""
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var v2 = segue.destination as! vista2
        v2.tamanio = self.lblTamanio.text!
    }
}

