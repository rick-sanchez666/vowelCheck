//
//  ViewController.swift
//  VowelChecker
//
//  Created by Konduri,Sai Deep on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    @IBAction func onSubmit(_ sender: Any) {
        spinner.startAnimating()
        let inp = input.text!.lowercased()
        if (inp.contains("a") || inp.contains("e") || inp.contains("i") || inp.contains("o") || inp.contains("u")) {
            result.text = "Found a vowel!"
        } else {
            result.text = "Vowel not found"
        }
        
        spinner.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        spinner.hidesWhenStopped = true
        
    
    }

 
    @IBAction func onInputChange(_ sender: Any) {
        result.text = ""
    }
}

