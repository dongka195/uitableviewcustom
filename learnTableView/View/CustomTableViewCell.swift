//
//  CustomTableViewCell.swift
//  learnTableView
//
//  Created by Hintoro on 4/6/20.
//  Copyright © 2020 Hintoro. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imv: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDesc: UILabel!

    
    var todo: Todo! {
        didSet {
            self.lblTitle.text = todo.title
            self.lblDesc.text = todo.formartDate()
            self.imv.image = todo.isSelected ? UIImage.init(named: "tick") : UIImage.init(named: "box")
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
