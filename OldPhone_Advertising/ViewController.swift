//
//  ViewController.swift
//  OldPhone_Advertising
//
//  Created by Phan Tan Thang on 6/30/21.
//  Copyright © 2021 Phan Tan Thang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableViewMain: UITableView!
    
    let nameProducts = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", "1984 Moto Portable"]
    let imageProducts = ["image-cell1", "image-cell2", "image-cell3", "image-cell4"]
    let listImageFullScreen = ["phone-fullscreen1", "phone-fullscreen2", "phone-fullscreen3", "phone-fullscreen4"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewMain.dataSource = self
        tableViewMain.delegate = self
        
        // register for table use cell inside the other file
        let nib:UINib = UINib(nibName: "CellProduct", bundle: nil)
        tableViewMain.register(nib, forCellReuseIdentifier: "cell_product")
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewMain.dequeueReusableCell(withIdentifier: "cell_product") as! CellProduct
        cell.labelNameProduct.text = nameProducts[indexPath.row]
        cell.imageProduct.image = UIImage(named: imageProducts[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 124 // every cell have height: 124
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Create storyboard
        let story_board = UIStoryboard(name: "Main", bundle: nil)
        
        // Create the screen 1907 Wall Set
        let screen2 = story_board.instantiateViewController(identifier: "screen2") as! Wall_SetViewController
        
        screen2.tenHinh = listImageFullScreen[indexPath.row]
        screen2.nameProduct = nameProducts[indexPath.row]
        
        // Navagation push
        self.navigationController?.pushViewController(screen2, animated: true)
        
    }
    
    
}

