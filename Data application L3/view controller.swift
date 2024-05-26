
//
//  ViewController.swift
//  Data application L3
//
//  Created by user240207 on 5/25/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fristname: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var country: UITextField!
    
    @IBOutlet weak var textfield: UITextView!
    
    @IBOutlet weak var invlable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func displayinvlable(){
        let fristname = fristname.text ?? ""
        let lastname = lastname.text ?? ""
        let country = country.text ?? ""
        let age = age.text ?? ""
        let informationofuser = "FIRST NAME : \(fristname)\nLAST NAME: \(lastname)\nCOUNTRY: \(country)\nAGE: \(age)"
        textfield.text = informationofuser
        
    }
    
    
    @IBAction func add(_ sender: UIButton) {
        displayinvlable()
        
    }
    
    @IBAction func submit(_ sender: UIButton) {
        
        if information()
        {
            invlable.text = " Submission Successfully Done....!"
        }
        else
        {
            invlable.text = " Submission successfully done."
        }
        invlable.isHidden = false
        
        func information() -> Bool
        {
            return !fristname.text!.isEmpty &&
            lastname.text!.isEmpty &&
            country.text!.isEmpty &&
            age.text!.isEmpty
        }
    }
    @IBAction func clear(_ sender: UIButton) {
     Allclear()
            
    }
    func Allclear() {
        fristname.text = ""
        lastname.text = ""
        country.text = ""
        age.text = ""
        textfield.text = ""
    }
    }
    		
 
    	
