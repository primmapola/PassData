//
//  ViewController.swift
//  PassData
//
//  Created by dongr on 14.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue){
        guard segue.identifier == "unwindSegue" else {return}
        guard let svc = segue.source as? SecondViewController else {return}
        self.resultLable.text = svc.lable.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else {return}
        dvc.login = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

