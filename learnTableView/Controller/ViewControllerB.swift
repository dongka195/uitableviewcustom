//
//  ViewControllerB.swift
//  learnTableView
//
//  Created by Hintoro on 4/7/20.
//  Copyright © 2020 Hintoro. All rights reserved.
//

import Foundation
import UIKit


class ViewControllerB : UIViewController {
    
    var i: Int = 0
    var name: String = "ABC"
    
    var onTapBackButton: ((String) -> Void)?
    
    override func viewDidLoad() {
        print("\(i)")
       
    }
    
    @IBAction func tapBackButton(_ sender: Any) {
        onTapBackButton?(name)
        self.navigationController?.popViewController(animated: true)
    }

}
