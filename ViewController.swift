//
//  ViewController.swift
//  深入DespatchQueue
//
//  Created by Dan Li on 14.07.18.
//  Copyright © 2018 DanStenLee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var tableData:[ModleData]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableData=Data.getData()
        tableView.dataSource=self
        tableView.delegate=self
     
    }
}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! CharacterCell
        cell.setup(modelData: tableData[indexPath.row])
        return cell
    }
}
