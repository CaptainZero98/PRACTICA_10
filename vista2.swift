//
//  vista2.swift
//  PRACTICA_10_MULTIPLE
//
//  Created by moviles on 28/10/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class vista2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
lbltamanio2.text = tamanio
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lbltamanio2: UILabel!
    
    @IBOutlet weak var lblMasa: UILabel!
    
    var tamanio = "";
    
    
    @IBAction func cambiaVista(_ sender: UIButton) {
        if(lblMasa.text != ""){
            performSegue(withIdentifier: "vista2", sender: self
            )
        }
        
        
    }
    
    
    
        
    @IBAction func seleccionaMasa(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            lblMasa.text = "Delgada"
        case 1:
            lblMasa.text = "Crujiente"
        case 2:
            lblMasa.text = "Gruesa"
        default:
            lblMasa.text = ""
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var v3 = segue.destination as! vista3
        v3.masa = self.lblMasa.text!
        v3.tamanio = self.lbltamanio2.text!
    }
}
