//
//  ViewController.swift
//  Suma de numeros
//
//  Created by Mac9 on 13/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoIV: UIImageView!
    @IBOutlet weak var numero1Txt: UITextField!
    @IBOutlet weak var numero2Txt: UITextField!
    @IBOutlet weak var ResultadoLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func OperacionBtn(_ sender: Any) {
        logoIV.image = UIImage(named: "miniom-1")
    }
    @IBAction func operacionrealizar(_ sender: UISegmentedControl) {
        let numero1: Double? = Double(numero1Txt.text ?? "0")
        let numero2: Double? = Double(numero2Txt.text ?? "0")
        if numero1Txt.text != "" || numero2Txt.text != "" {
        switch sender.selectedSegmentIndex {
        
        case 0:
            ResultadoLbl.text = "El resultado de la suma es: \(numero1!+numero2!)"
            logoIV.image = UIImage(named: "miniom-1")
        case 1:
            ResultadoLbl.text = "El resultado de la resta es: \(numero1!-numero2!)"
            logoIV.image = UIImage(named: "resta")
        case 2:
            ResultadoLbl.text = "El resultado de la multiplicacion es: \(numero1!*numero2!)"
            logoIV.image = UIImage(named: "multi")
        case 3:
            ResultadoLbl.text = "El resultado de la division es: \(numero1!/numero2!)"
            logoIV.image = UIImage(named: "division")
       
        default:
            ResultadoLbl.text = "No se selecciono ninguna."
        }
        }else{
            ResultadoLbl.text = "Dejaste vacio algun campo"
        }
        
    }
    

}

