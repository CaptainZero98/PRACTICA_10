//
//  vista4.swift
//  PRACTICA_10_MULTIPLE
//
//  Created by moviles on 28/10/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class vista4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        lblTamanio4.text = tamanio
        lblMasa3.text = masa
        lblQueso2.text = queso
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lblIngredientes: UILabel!
    @IBOutlet weak var lblTamanio4: UILabel!
    @IBOutlet weak var lblMasa3: UILabel!
    @IBOutlet weak var lblQueso2: UILabel!
    @IBOutlet weak var sJamon: UISwitch!
    @IBOutlet weak var sPepperoni: UISwitch!
    @IBOutlet weak var sPavo: UISwitch!
    @IBOutlet weak var sSalchicha: UISwitch!
    @IBOutlet weak var sAceituna: UISwitch!
    @IBOutlet weak var sCebolla: UISwitch!
    @IBOutlet weak var sPinia: UISwitch!
    @IBOutlet weak var sAnchoa: UISwitch!
    

    var queso = ""
    var masa = ""
    var tamanio = ""
    
    

    
    
    
    
    @IBAction func addIngred(_ sender: UIButton) {
        
        lblIngredientes.text = ""
        var cCont = 0
        if sJamon.isOn {
            
        cCont = cCont+1
        }
        
        if sPepperoni.isOn {
       cCont = cCont+1
            
        }
        if sPavo.isOn {
             cCont = cCont+1
            
        }
        if sSalchicha.isOn {
    
     cCont = cCont+1
            
        
        }
        if sAceituna.isOn {
            
           
          cCont = cCont+1
            
        }
        if sCebolla.isOn {
        cCont = cCont+1
            
        }
        if sPinia.isOn {
            
        cCont = cCont+1
            
        }
        if sAnchoa.isOn {
             cCont = cCont+1
            
        }else{
            lblIngredientes.text = lblIngredientes.text! + ""
        }
        
        
        
        
        if(cCont <= 5){
        
        if sJamon.isOn {
            
            lblIngredientes.text = lblIngredientes.text! + " Jamon"
           
        }else{
            lblIngredientes.text = lblIngredientes.text! + ""
        }
        if sPepperoni.isOn {
            
            lblIngredientes.text = lblIngredientes.text! + " Pepperoni"
            

        }else{
            lblIngredientes.text = lblIngredientes.text! + ""
        }
        if sPavo.isOn {
            
            lblIngredientes.text = lblIngredientes.text! + " Pavo"
            

        }else{
            lblIngredientes.text = lblIngredientes.text! + ""
       

        }
        if sSalchicha.isOn {
            
            lblIngredientes.text = lblIngredientes.text! + " Salchicha"
       

        }else{
            lblIngredientes.text = lblIngredientes.text! + ""
        }
        if sAceituna.isOn {
            
            lblIngredientes.text = lblIngredientes.text! + " Aceituna"
         

        }else{
            lblIngredientes.text = lblIngredientes.text! + ""
        }
        if sCebolla.isOn {
            
            lblIngredientes.text = lblIngredientes.text! + " Cebolla"
         

        }else{
            lblIngredientes.text = lblIngredientes.text! + ""
        }
        if sPinia.isOn {
            
            lblIngredientes.text = lblIngredientes.text! + " Piña"
           

        }else{
            lblIngredientes.text = lblIngredientes.text! + ""
        }
        
        if sAnchoa.isOn {
            
            lblIngredientes.text = lblIngredientes.text! + " Anchoa"
            

        }else{
            lblIngredientes.text = lblIngredientes.text! + ""
        }
        
        }else{
            
            lblIngredientes.text = ""
            
        }
    }
    
    @IBAction func cambiaVista(_ sender: UIButton) {
       
        
        if(lblIngredientes.text != ""){
            performSegue(withIdentifier: "vista4", sender: self
            )
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var v5 = segue.destination as! vista5
        v5.masa = self.lblMasa3.text!
        v5.tamanio = self.lblTamanio4.text!
        v5.queso = self.lblQueso2.text!
        v5.ingredientes = self.lblIngredientes.text!
    }
    
   
}
