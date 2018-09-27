//
//  DetailViewController.swift
//  NotificationPro
//
//  Created by trung on 2018/08/28.
//  Copyright © 2018 trung. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var outletTextFieldDetail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(toVC(notificationDetail:)), name: .key, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(self.toVC(notificationDetail:)), name: .key, object: nil)
        print(outletTextFieldDetail.text ?? "yyyyyyy7")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    @objc func toVC(notificationDetail: NSNotification) {
        outletTextFieldDetail.text = notificationDetail.object as? String
//        outletTextFieldDetail.text = notificationDetail.userInfo?["keyData"] as? String
    }
   
    @IBAction func buttonDetail(_ sender: Any) {
        
    }

}
