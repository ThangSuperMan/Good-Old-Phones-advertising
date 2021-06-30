//
//  CellProduct.swift
//  OldPhone_Advertising
//
//  Created by Phan Tan Thang on 6/30/21.
//  Copyright © 2021 Phan Tan Thang. All rights reserved.
//

import UIKit

class CellProduct: UITableViewCell {
    
    
    @IBOutlet weak var imageProduct: UIImageView!
    
    
    @IBOutlet weak var labelNameProduct: UILabel!
    
    
    @IBOutlet weak var imageRightArrow: UIImageView!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
