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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}


extension ViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.lblTitle.text = "\(indexPath.row)"
//        cell.onTapAddButton = {
//            self.pushVCB(index: indexPath.row)
//        }
        return cell
    }
    
    func pushVCB(index: Int) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerB") as! ViewControllerB
        vc.i = index
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}


extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerB") as! ViewControllerB
        
        vc.onTapBackButton = { str in
            print("Nhan duoc du lieu: \(str)")
            
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
