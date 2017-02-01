//
//  SecondViewController.swift
//  TODOLIST
//
//  Created by Suphaloet Vongkunkij on 2/1/2560 BE.
//  Copyright © 2560 Suphaloet Vongkunkij. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    var item = [String()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var txtInput: UITextField!

    @IBAction func add(_ sender: Any) {
        item.append(txtInput.text!)
        UserDefaults.standard.set(item, forKey: "array")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

