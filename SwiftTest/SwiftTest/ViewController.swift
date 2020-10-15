//
//  ViewController.swift
//  SwiftTest
//
//  Created by xxx on 2020/10/15.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGray
        
        button.setTitle("ssss", for: .normal)
        self.view.addSubview(button)
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 40)
        
    }
    
    
    
    
    @objc func buttonClick() {
        self.navigationController?.pushViewController(MyViewController(), animated: true)
    }
    
    lazy var button: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 16)
        btn.backgroundColor = UIColor.white
        btn.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        return btn
    }()
    
}

