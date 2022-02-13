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
        
    }
}
extension UIViewController{
    func showAlert(title:String){
        let alertVC = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "我知道了", style: .cancel))
        self.present(alertVC, animated: true)
    }
}
