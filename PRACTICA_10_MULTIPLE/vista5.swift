//
//  vista5.swift
//  PRACTICA_10_MULTIPLE
//
//  Created by moviles on 28/10/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class vista5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       lblT.text = tamanio
        lblM.text = masa
        lblQ.text = queso
        lblI.text = ingredientes
        
    }
    
var tamanio = ""
var masa = ""
var queso = ""
var ingredientes = ""
  
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblM: UILabel!
    @IBOutlet weak var lblQ: UILabel!
    @IBOutlet weak var lblI: UILabel!
    
    @IBOutlet weak var btnVuelta: UIButton!
    
    
    @IBOutlet weak var lblEnviado: UILabel!
    
    @IBAction func vuelveinicio(_ sender: Any) {
        
          performSegue(withIdentifier: "vistaInicio", sender: self)
        
    }
    
    @IBAction func btnEnviado(_ sender: Any) {
        
        lblEnviado.text = "Su pedido se ha enviado "
        btnVuelta.isEnabled = false
   
    }
}
