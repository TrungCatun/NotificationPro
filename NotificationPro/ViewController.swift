//
//  ViewController.swift
//  NotificationPro
//
//  Created by trung on 2018/08/28.
//  Copyright © 2018 trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outletTextFieldVC: UITextField!
//    var data = [String : String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        data ["keyData"] = outletTextFieldVC.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func buttonVC(_ sender: Any) {
         NotificationCenter.default.post(name: .key, object: outletTextFieldVC.text)
//        NotificationCenter.default.post(name: .key, object: nil, userInfo: data)
        
//         if let toDetial = storyboard?.instantiateViewController(withIdentifier: "id") as? DetailViewController {
//            toDetial.outletTextFieldDetail.text = outletTextFieldVC?.text
//            navigationController?.pushViewController(toDetial, animated: true)
//        }
        print(outletTextFieldVC.text!)
    }
    

}

