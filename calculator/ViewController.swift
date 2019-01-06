//
//  ViewController.swift
//  calculator
//
//  Created by fzk on 2018/9/28.
//  Copyright © 2018年 fzk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var result: UITextField!
    
    var re = 0
    var add = 0
    var number = 0
    var judge = 0
    var Subtraction = 0
    var result_1 = ""
    
    @IBAction func output(_ sender: Any) {
        let a = Double(result_1)!
        let b = Double(result.text!)!
        var c = 0.0
        if result.text == ""{
            result.text = ""
        }
        if number == 1{
             c = ((a*100000000) + (b*100000000)) / 100000000
            result.text = String(c)
        }
        
        if number == 2{
             c = ((a*100000000) - (b*100000000)) / 100000000
            result.text = String(c)
        }
        
        if number == 3{
             c = ((a*100000000) * (b*100000000)) / 10000000000000000
            result.text = String(c)
        }
        
        if number == 4{
             c = ((a*100000000) / (b*100000000))
            result.text = String(c)
        }
        
        result.text = String(format:"%.10lf",c)
        
        while(result.text?.last == "0")
        {
            result.text?.removeLast()
        }
        if(result.text?.last == ".")
        {
            result.text?.removeLast()
        }
        
        
        judge = 0
        re = 1
        add = 0
    }
    @IBAction func number1(_ sender: Any) {
        
        if re == 1{
            result.text="1"
            re = 0
            
            
        }else{
            result.text = result.text! + "1"
        }
    }
    
    @IBAction func number2(_ sender: Any) {
        
        if re == 1{
            result.text="2"
            re = 0
            
        }else{
            result.text = result.text! + "2"
        }
    }
    
    @IBAction func number3(_ sender: Any) {
        
        if re == 1{
            result.text="3"
            re = 0
            
        }else{
            result.text = result.text! + "3"
        }
    }
    
   
    
    @IBAction func number4(_ sender: Any) {
        if re == 1{
            result.text="4"
            re = 0
            
        }else{
            result.text = result.text! + "4"
        }
    }
    
    @IBAction func number5(_ sender: Any) {
        if re == 1{
        result.text="5"
            re = 0
    }else{
        result.text = result.text! + "5"
        }
    }
    
    @IBAction func number6(_ sender: Any) {
        if re == 1{
            result.text="6"
            re = 0
            
        }else{
            result.text = result.text! + "6"
        }
    }
    
    @IBAction func number7(_ sender: Any) {
        if re == 1{
            result.text="7"
            re = 0
            
        }else{
            result.text = result.text! + "7"
        }
    }
    
    
    @IBAction func number8(_ sender: Any) {
        if re == 1{
            result.text="8"
            re = 0
            
        }else{
            result.text = result.text! + "8"
        }
    }
    
    @IBAction func number9(_ sender: Any) {
        if re == 1{
            result.text="9"
            re = 0
            
        }else{
            result.text = result.text! + "9"
        }
    }
    
    @IBAction func number0(_ sender: Any) {
        if re == 1{
            result.text="0"
            re = 0
            
        }else{
            result.text = result.text! + "0"
        }
    }
    
    @IBAction func dot(_ sender: Any) {

        if judge == 1{
            result.text = result.text!
            }
        else{
            result.text = result.text! + "."
            judge = 1
        }
    }

    @IBAction func clear(_ sender: Any) {
        result.text = ""
        add = 0
    }
    
    @IBAction func plus(_ sender: Any) {
        if add != 0{
            
            if number != 0{
                
                output(result.text)
                add = 1
                let x =
                    Double(result.text!)!
                result_1 = String(x)
                result.text = ""
                number = 1
                re = 0
            }
//            let a = Double(result_1)!
//            let b = Double(result.text!)!
//            let c = a+b
//            result_1 = String(c)
//            result.text = ""
//            number = 1
//            add = 0
//            re = 1
        }
        else
        {
            
            if result.text == ""{
                result.text = ""
            }
            else
             {
                add = 1
                let x =
                 Double(result.text!)!
                result_1 = String(x)
                result.text = ""
                number = 1
                re = 0
             }
            
        }
       
        
        judge = 0
    }
    @IBAction func Subtraction(_ sender: Any) {
        if add == 1{
            if number != 0{
                
                output(result.text)
                add = 1
                let x =
                    Double(result.text!)!
                result_1 = String(x)
                result.text = ""
                number = 2
                re = 0
            }
//            let a = Double(result_1)!
//            let b = Double(result.text!)!
//            let c = a-b
//            result_1 = String(c)
//            result.text = ""
//            number = 2
//            re = 1
//            add = 0
            
                   }
        else
        {
            add = 1
            if result.text == ""{
                result.text = ""
            }
            else
            {
                add = 1
                let x =
                    Double(result.text!)!
                result_1 = String(x)
                result.text = ""
                number = 2
                re = 0
            }
            if result.text == ""{
                result.text = ""
            }
        }

        judge = 0
    }
    
    @IBAction func Multiply(_ sender: Any) {
        if add != 0{
            if number != 0{
                
                output(result.text)
                add = 1
                let x =
                    Double(result.text!)!
                result_1 = String(x)
                result.text = ""
                number = 3
                re = 0
            }
//            let a = Double(result_1)!
//            let b = Double(result.text!)!
//            let c = a * b
//            result_1 = String(c)
//            result.text = ""
//            number = 3
//            add = 0
//            re = 1
                    }
        else
        {
            add = 1
            if result.text == ""{
                result.text = ""
            }
            else
            {
                add = 1
                let x =
                    Double(result.text!)!
                result_1 = String(x)
                result.text = ""
                number = 3
                re = 0
            }
        }
        if result.text == ""{
            result.text = ""
        }
        judge = 0
        
    }
    @IBAction func Divide(_ sender: Any) {
        if add == 1{
            if number != 0{
                
                output(result.text)
                add = 1
                let x =
                    Double(result.text!)!
                result_1 = String(x)
                result.text = ""
                number = 4
                re = 0
            }
//            let a = Double(result_1)!
//            let b = Double(result.text!)!
//            let c = a / b
//            result_1 = String(c)
//            result.text = ""
//            number = 4
//            re = 1
//            add = 0
                    }
        else
        {
            add = 1
            if result.text == ""{
                result.text = ""
            }
            else
            {
                add = 1
                let x =
                    Double(result.text!)!
                result_1 = String(x)
                result.text = ""
                number = 4
                re = 0
            }
        }
        if result.text == ""{
            result.text = ""
        }
        judge = 0
    }
    
    
    @IBAction func Treturn(_ sender: Any) {
        result.text?.removeLast()
    }
    
    
    @IBAction func Change(_ sender: Any) {
        let count = Double(result.text!)!
        let count2 = -count
        result.text = String(count2)
        re = 0
    }
    @IBAction func Percent(_ sender: Any) {
        let count = Double(result.text!)!
        let count2 = count * 0.01
        result.text = String(count2)
        re = 0
        
    }
   
    @IBAction func Square(_ sender: Any) {
        let count = Double(result.text!)!
        let count2 = count * count
        result.text = String(count2)
        re = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

