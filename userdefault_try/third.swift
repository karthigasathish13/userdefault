//
//  third.swift
//  userdefault_try
//
//  Created by Karthiga on 9/11/23.
//

import UIKit

class third: UIViewController {

    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = UserDefaults.standard.string(forKey: "Email")
        label2.text = UserDefaults.standard.string(forKey: "Password")
        
        
    }
    
    
    

}
