//
//  vista3.swift
//  PRACTICA_10_MULTIPLE
//
//  Created by moviles on 28/10/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class vista3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
lblTamanio3.text = tamanio
    lblMasa2.text = masa
        // Do any additional setup after loading the view.
    }
    
   
    @IBOutlet weak var lblTamanio3: UILabel!
    @IBOutlet weak var lblMasa2: UILabel!
    @IBOutlet weak var lblQueso: UILabel!
    
    var tamanio = ""
    var masa = ""
    
    
    @IBAction func seleccionaQueso(_ sender: UISegmentedControl) {
        
        
        switch sender.selectedSegmentIndex {
        case 0:
            lblQueso.text = "Mozzarella"
        case 1:
            lblQueso.text = "Cheddar"
        case 2:
            lblQueso.text = "Parmesano"
        case 3:
            lblQueso.text = "Sin queso"
        default:
            lblQueso.text = ""
        }
        
    }
    
    
    @IBAction func cambiaVista(_ sender: UIButton) {
        if(lblQueso.text != ""){
            performSegue(withIdentifier: "vista3", sender: self)
            
        }
    


}
    
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var v4 = segue.destination as! vista4
        v4.masa = self.lblMasa2.text!
        v4.tamanio = self.lblTamanio3.text!
        v4.queso = self.lblQueso.text!
    }
}
