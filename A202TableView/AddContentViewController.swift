//
//  AddContentViewController.swift
//  A202TableView
//
//  Created by 申潤五 on 2022/2/13.
//

import UIKit

class AddContentViewController: UIViewController {

    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("add view will appear")
    }

    @IBAction func addContentAction(_ sender: Any) {
        
        let name = nameTF.text ?? ""
        let phone = phoneTF.text ?? ""
        
        if name.count <= 2 {
            showAlert(title: "至少輸入三碼名稱")
            return
        }
        
        if phone.count != 10 {
            showAlert(title: "電話號碼至少應為十碼")
            return
        }
        
        let content = ["name":name,"phone":phone]
        
        let userDefault  = UserDefaults.standard
        
        var contentList:[[String:String]] = (userDefault.value(forKey: "contentList") as? [[String:String]]) ?? []
        contentList.append(content)
        
        userDefault.set(contentList, forKey: "contentList")
        userDefault.synchronize()
        
        print(userDefault.value(forKey: "contentList") as! [[String:String]])
        
        phoneTF.text = ""
        nameTF.text = ""
        showAlert(title: "輸入成功")
        
        
    }
}

