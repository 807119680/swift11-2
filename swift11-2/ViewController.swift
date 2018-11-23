//
//  ViewController.swift
//  swift11-2
//
//  Created by s20171106168 on 2018/11/2.
//  Copyright © 2018 s20171106168. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp:Double = 0
    var temp2:Double = 0
    var temp3:Double = 0
    var operatorFlag = 0
    var operatorFlag2 = 0
    var operatorFlag3 = 0
    var s:String = ""
    @IBOutlet weak var Result: UITextField!
    @IBAction func Button1(_ sender: Any) {
        if operatorFlag3==0 {
            Result.text = ""
        }
        operatorFlag3 = operatorFlag3 + 1
        Result.text = Result.text! + "1"
        
    }
    
    @IBAction func Button2(_ sender: Any) {
        if operatorFlag3==0 {
            Result.text = ""
        }
        operatorFlag3 = operatorFlag3 + 1
        Result.text = Result.text! + "2"
    }
    
    @IBAction func Button3(_ sender: Any) {
        if operatorFlag3==0 {
            Result.text = ""
        }
        operatorFlag3 = operatorFlag3 + 1
        Result.text = Result.text! + "3"
    }
    
    @IBAction func Button4(_ sender: Any) {
        if operatorFlag3==0 {
            Result.text = ""
        }
        operatorFlag3 = operatorFlag3 + 1
        Result.text = Result.text! + "4"
    }
    
    @IBAction func Button5(_ sender: Any) {
        if operatorFlag3==0 {
            Result.text = ""
        }
        operatorFlag3 = operatorFlag3 + 1
        Result.text = Result.text! + "5"
    }
    
    @IBAction func Button6(_ sender: Any) {
        if operatorFlag3==0 {
            Result.text = ""
        }
        operatorFlag3 = operatorFlag3 + 1
        Result.text = Result.text! + "6"
    }
    
    @IBAction func Button7(_ sender: Any) {
        if operatorFlag3==0 {
            Result.text = ""
        }
        operatorFlag3 = operatorFlag3 + 1
        Result.text = Result.text! + "7"
    }
    
    @IBAction func Button8(_ sender: Any) {
        if operatorFlag3==0 {
            Result.text = ""
        }
        operatorFlag3 = operatorFlag3 + 1
        Result.text = Result.text! + "8"
    }
    
    @IBAction func Button9(_ sender: Any) {
        if operatorFlag3==0 {
            Result.text = ""
        }
        operatorFlag3 = operatorFlag3 + 1
        Result.text = Result.text! + "9"
    }

    @IBAction func ButtonAC(_ sender: Any) {
        Result.text = "0"
        operatorFlag2 = 0
        operatorFlag3 = 0
    }
    
    @IBAction func Button0(_ sender: Any) {
        Result.text = Result.text! + "0"
        if operatorFlag2 == 1 {
        }
    }
    
    @IBAction func ButtonCalculate(_ sender: Any) {
        temp = Double(Result.text!)!
        if operatorFlag2==0 {
            temp2 = temp
        }
        Result.text = ""
        operatorFlag = 1
        if operatorFlag2==0 {
        }
        else
        {
            temp2 = temp2 + temp
        }
        operatorFlag2 = operatorFlag2 + 1
    }
    
    @IBAction func ButtonSbutrction(_ sender: Any) {
        temp = Double(Result.text!)!
        if operatorFlag2 == 0
        {
            temp2 = temp
        }
        Result.text = ""
        operatorFlag = 2
        if operatorFlag2==0
        {
        }
        else
        {
            temp2 = temp2 - temp
        }
        operatorFlag2 = operatorFlag2 + 1
    }
    
    @IBAction func ButtonMultiolication(_ sender: Any) {
        temp = Double(Result.text!)!
        if operatorFlag2 == 0
        {
            temp2 = temp
        }
        Result.text = ""
        operatorFlag = 3
        if operatorFlag2 == 0{
        }
        else{
            temp2 = temp2 * temp
        }
        operatorFlag2 = operatorFlag2 + 1
    }
    
    @IBAction func ButtonDivision(_ sender: Any) {
        temp = Double(Result.text!)!
        if operatorFlag2==0 {
            temp2 = temp
        }
        Result.text = ""
        operatorFlag = 4
        if operatorFlag2 == 0{
        }
        else{
            temp2 = temp2 / temp
        }
        operatorFlag2 = operatorFlag2 + 1
    }
    
    @IBAction func ButtonSymbol(_ sender: Any) {
        temp3 = Double(Result.text!)!
        temp3 = temp3 * -1
        Result.text = "\(temp3)"
        
    }
    
    @IBAction func ButtonEqual(_ sender: Any) {
        switch operatorFlag {
        case 1:
            if operatorFlag2==1
            {
                temp = temp + Double(Result.text!)!
                s = "\(temp)"
                Result.text = s
                operatorFlag2 = 0
            }
            else
            {   temp2 = temp2 + Double(Result.text!)!
                Result.text = "\(temp2)"
                operatorFlag2 = 0
            }
        case 2:
            if operatorFlag2==1
            {
                temp = temp - Double(Result.text!)!
                Result.text = "\(temp)"
                operatorFlag2 = 0
            }
            else
            {
                temp2 = temp2 - Double(Result.text!)!
                Result.text = "\(temp2)"
                operatorFlag2 = 0
            }
        case 3:
            if operatorFlag2 == 1
            {
                temp = temp * Double(Result.text!)!
                Result.text = "\(temp)"
                operatorFlag2 = 0
            }
            else
            {
                temp2 = temp2 * Double(Result.text!)!
                Result.text = "\(temp2)"
                operatorFlag2 = 0
            }
        case 4:
            if operatorFlag2 == 1
            {
                temp = temp / Double(Result.text!)!
                s = String(format:"%.8f", temp)
                Result.text = s
                operatorFlag2 = 0
            }
            else
            {
                temp2 = temp2 / Double(Result.text!)!
                s = String(format: "%.8f", temp2)
                Result.text = s
                operatorFlag2 = 0
            }
        default:
            print("Nothing")
        }
    }
    
    @IBAction func ButtonPoint(_ sender: Any) {
        Result.text = Result.text! + "."
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

