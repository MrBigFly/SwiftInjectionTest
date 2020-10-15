//
//  MyViewController.swift
//  SwiftTest
//
//  Created by xxx on 2020/10/15.
//

import UIKit
import SnapKit

class MyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGray
        
        self.view.addSubview(button)
        // 更改约束的时候没有清空之前的约束，会存在两个约束，造成约束冲突，所以先清空。若是不清空的话需要重新进入页面才能生效。
        button.snp.removeConstraints()
        button.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(100)
            make.height.equalTo(30)
            make.width.equalTo(100)
        }
        button.setTitle("sdddd", for: .normal)
    }
    
    
    @objc func injected() {
        viewDidLoad()
        self.view.backgroundColor = UIColor.orange
    }
    
    @objc func buttonClick() {
        
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
