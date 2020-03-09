//
//  ViewController.swift
//  Conversores
//
//  Created by tiago.flor on 03/01/20.
//  Copyright © 2020 tiago flor. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var tfValue: UITextField! //valor que o usuario irá colocar
    @IBOutlet weak var btUnit1: UIButton! //botao da unidade de medida 1
    @IBOutlet weak var btUnit2: UIButton!//botao da unidade de medida 2
    @IBOutlet weak var lbResult: UILabel!//label Resultado
    @IBOutlet weak var lbResultUnit: UILabel! //und de medida que esta apresentando resultado do lbResult
    
    @IBOutlet weak var lbUnit: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func showNext( sender: UIButton) {
        //mostrar a prox medida que ira ser trabalhada.
        switch lbUnit.text {
            case "Temperatura":
                lbUnit.text = "Peso"
                btUnit1.setTitle("Kilograma", for: .normal)
                btUnit2.setTitle("Libra", for: .normal)
            case "Peso":
                       lbUnit.text = "Moeda"
                       btUnit1.setTitle("Real", for: .normal)
                       btUnit2.setTitle("Dolar", for: .normal)
            case "Moeda":
                       lbUnit.text = "Distância"
                       btUnit1.setTitle("Metro", for: .normal)
                       btUnit2.setTitle("Kilometro", for: .normal)
            default:
                       lbUnit.text = "Temperatura"
                       btUnit1.setTitle("Celsius", for: .normal)
                       btUnit2.setTitle("Farenheint", for: .normal)
            
            } // Cases acima sao para a mudanca de temperatura para peso, moeda e etc....
     convert(nil) //aqui mostra que estamos fazendo uma conversao, e nao atraves de um botao
    }

    //"if sender" desembrulha o convert de forma segura
    @IBAction func convert(_ sender: UIButton?) {
        if let sender = sender {
            if sender  == btUnit1{
                btUnit2.alpha = 0.5 //se clicar no botao 1 entao aumentará o 2 em 50%
            } else{
                btUnit1.alpha = 0.5
            }
            sender.alpha = 1.0 //ao clicar em um botao ele fica 100% e o outro ficará 50% do seu tamanho.
        }
        switch lbUnit.text! {
        case "Temperatura":
            calcTemperature()
        case "Peso":
             calcWeight()
        case "Moeda":
             calcCurrency()
        default:
             calcDistance()
        
        }
    }
// nesse trecho será feito cálculo da função passando de celsus para farenheint
    func calcTemperature(){
        guard let temperature = Double(tfValue.text!) else {return} //vai desenbrulhar e retornar para fora da função
        if btUnit1.alpha == 1.0{
            lbResultUnit.text = "Farenheint"
            lbResult.text = String(temperature * 1.8 + 32.0) //Faz a conversão para String
        } else {
            lbResultUnit.text = "Celsus"
            lbResult.text = String((temperature - 32.0) / 1.8)
        }
    }
    
    
    func calcWeight(){
        guard let weight = Double(tfValue.text!) else {return} //vai desenbrulhar e retornar para fora da função
                      if btUnit1.alpha == 1.0{
                          lbResultUnit.text = "Libra"
                        lbResult.text = String(weight / 2.2046) //Faz a conversão para String
                      } else {
                          lbResultUnit.text = "Kilograma"
                          lbResult.text = String(weight * 2.2046)
       }
    }
    func calcCurrency(){
        guard let currency = Double(tfValue.text!) else {return} //vai desenbrulhar e retornar para fora da função
               if btUnit1.alpha == 1.0{
                   lbResultUnit.text = "Dólar"
                   lbResult.text = String(currency / 1000.0) //Faz a conversão para String
               } else {
                   lbResultUnit.text = "Real"
                   lbResult.text = String(currency * 1000.0)
        }
    }
    func calcDistance(){
    guard let distance = Double(tfValue.text!) else {return} //vai desenbrulhar e retornar para fora da função
        if btUnit1.alpha == 1.0{
            lbResultUnit.text = "Kilômetro"
            lbResult.text = String(distance / 1000.0) //Faz a conversão para String
        } else {
            lbResultUnit.text = "Metro"
            lbResult.text = String(distance * 1000.0)
        
        }
    }

}
