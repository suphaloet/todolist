//
//  FirstViewController.swift
//  TODOLIST
//
//  Created by Suphaloet Vongkunkij on 2/1/2560 BE.
//  Copyright © 2560 Suphaloet Vongkunkij. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var itemView: UITableView!
     var arr = ["FirstToDo","SecondToDo"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        //UserDefaults.standard.set(arr, forKey: "array")
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.object(forKey: "array") != nil{
        arr = UserDefaults.standard.object(forKey: "array") as! [String]
        self.itemView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = arr[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    

}

