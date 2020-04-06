//
//  ViewController.swift
//  learnTableView
//
//  Created by Hintoro on 4/5/20.
//  Copyright © 2020 Hintoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tbv: UITableView!
    
    
    var todos:[Todo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.addRightBarButtonItem()
    }
    
 

}

//MARK:- Function
extension ViewController {
    
    //Them nut add vao right navigation
    func addRightBarButtonItem() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTapped))

     }
    
    @objc func addTapped() {
        
        print("Add Item")
        
        let randomInt = Int.random(in: 0..<city_names.count)
        let cityName: String = city_names[randomInt]
        
        let todo = Todo.init(title: cityName, isSelected: false, date: Date())
        
        self.todos.append(todo)
        
        self.tbv.reloadData()
        
    }
    
}


extension ViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = self.todos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.todo = item
        return cell
    }
    
    
}

extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.todos[indexPath.row].isSelected = !self.todos[indexPath.row].isSelected
        self.tbv.reloadData()
    }
    
}
