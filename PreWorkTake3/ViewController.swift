//
//  ViewController.swift
//  PreWorkTake3
//
//  Created by Juliana Dudziak on 1/5/21.
//

import UIKit

class ViewController: UIViewController {

    var backgroundColor: UIColor!
    
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor
    }
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func didTapColorButton(_ sender: Any) {
        if textLabel.textColor == UIColor.black {
            textLabel.textColor = UIColor.red
        } else {
            textLabel.textColor = UIColor.black
            
        }
    
    }
    
  
 
    @IBAction func didTapViewButton(_ sender: Any) {
        if  view.backgroundColor == backgroundColor {
            view.backgroundColor = UIColor.black
        } else {
            view.backgroundColor = backgroundColor
        }
    
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        if textField.text != "" {
            textLabel.text = textField.text
        } else {
            textLabel.text = "Goodbye!"
        }
    
        view.endEditing(true)
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello"
        textLabel.textColor = UIColor.black
        view.backgroundColor = backgroundColor
        textField.text = ""
    }

}
    
