//
//  SecondViewController.swift
//  PassData
//
//  Created by dongr on 14.02.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login: String? = nil
    var resultData: String? = nil
    @IBOutlet weak var lable: UILabel!
    
    override func viewDidLoad() {
        guard let login = self.login else {return}
        lable.text = "Hello, \(login)"
    }
    
    @IBAction func goBackButton(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
}
    
