//
//  second.swift
//  userdefault_try
//
//  Created by Karthiga on 9/11/23.
//

import UIKit

class second: UIViewController {

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var register: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func registeract(_ sender: Any) {
        UserDefaults.standard.set(text1.text, forKey: "Email")
        UserDefaults.standard.set(text2.text, forKey: "Password")
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "view") as! ViewController //after save go to viewcontroller
        //self.present(nextViewController, animated:true, completion:nil)
        dismiss(animated: true)
    }
    
   
}
