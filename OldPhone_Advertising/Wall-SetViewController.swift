//
//  Wall-SetViewController.swift
//  OldPhone_Advertising
//
//  Created by Phan Tan Thang on 6/30/21.
//  Copyright © 2021 Phan Tan Thang. All rights reserved.
//

import UIKit

class Wall_SetViewController: UIViewController {
    
    @IBOutlet weak var imageProduct: UIImageView!
    @IBOutlet weak var labelNameProduct: UILabel!
    @IBOutlet weak var buttonAddToCart: UIButton!
    
    var tenHinh:String!
    var nameProduct:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: tenHinh)!)
        imageProduct.image = UIImage(named: tenHinh)
        labelNameProduct.text = nameProduct
    }
    


}
