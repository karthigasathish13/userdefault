//
//  ViewController.swift
//  userdefault_try
//
//  Created by Karthiga on 9/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var field2: UITextField!
    @IBOutlet weak var field1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func register(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "second") as! second
        self.present(nextViewController, animated:true, completion:nil)
        
    }
    @IBAction func login(_ sender: Any) {
        if(field1.text == UserDefaults.standard.string(forKey: "Email")) {
            
        if(field2.text == UserDefaults.standard.string(forKey: "Password")){
                
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "third") as! third
            self.present(nextViewController, animated:true, completion:nil)
        }
            else{
                print("password error")
            }
            
        
    }
        else{
            print("emaill error")
        }
        
    }
    
    
}

