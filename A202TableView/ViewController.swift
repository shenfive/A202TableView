//
//  ViewController.swift
//  A202TableView
//
//  Created by 申潤五 on 2022/2/13.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var contentList:[[String:String]] = []

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self

    }
    
    

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        contentList = (UserDefaults.standard.value(forKey: "contentList") as? [[String:String]]) ?? []
        myTableView.reloadData()
    
        
    }
    
    //MARK: TableView DataSource and Delegate
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "theTableViewCell") as! ContentTableViewCell
        cell.nameLabel.text = contentList[indexPath.row]["name"]
        cell.phone.text = contentList[indexPath.row]["phone"]
        
        
        return cell
    }
    


}

