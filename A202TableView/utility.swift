//
//  utility.swift
//  A202TableView
//
//  Created by 申潤五 on 2022/2/13.
//

import UIKit

extension UIViewController{
    func showAlert(title:String){
        let alertVC = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "我知道了", style: .cancel))
        self.present(alertVC, animated: true)
    }
}


