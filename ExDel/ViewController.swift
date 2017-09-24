//
//  ViewController.swift
//  ExDel
//
//  Created by Varaha Venkatagiri B. on 21/09/17.
//  Copyright © 2017 Varaha Venkatagiri B. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var imageUrls = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageUrls = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd7zy1fcs-WjjiHH_U8fyfCxRmQdQzA5O3a4o0jFDIaZZfdsXTLw","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxbcFk-haubEvFulHQxTlqxHEjkEQEjlK4GmtQBU1v04VYL92D","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdtASilEBEY-bShomAyaCmBLVFXPnNkWEp8HaL35H-cbisbg1Qew","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQglh29nI3tDUNsKaBY3rdzjAPXqDyP6eW0xaUC3WxBUG0WmzL5","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYs1Fep5_myQZWueNW2_a8FOFtGmKaf_uPErI7JogB9i2ncPt5Yg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd4jaGmshgKM6N-bv0cVvCdKAKSOZGMnHHY1b_brqJgmQ4CRAKJg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe3baHBkkb-Miz43u2UJbI_F_yLa2XEh4KFgTlUN9ro78X4tP5","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVnkUkg2qOxbUqdbCOW2AA-sZLeGRqHn3rKS-FeknC0lBB7Lga","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLcaH8PPndLRSD7jQshSoJXiVr7PI8D6oIYPRyf4NYU6hiFgKR","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs3UWqZ1g1MoPr2vjonyLEtPC9MIrvT8PxCVTb6YDRml50HIHu","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2jkwJSGobjwPbqh77eAz69Vf1AxFji7qvIg0dINNXf6nChu4","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCvC52SeaDsxWdethOJp6SeIcvwYxKLET3-TnBk8UX5P3ODgMWVg"]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let imgView = cell.viewWithTag(1) as! UIImageView
        imgView.sd_setImage(with: URL(string: imageUrls[indexPath.row]))
        
        return cell
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageUrls.count
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

