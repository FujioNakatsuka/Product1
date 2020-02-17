//
//  ViewController.swift
//  Product1
//
//  Created by Fujii Yuta on 2020/02/17.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit


class NiewController: UIViewController {

    var result1 = String()
    var result2 = String()
    var result3 = String()
    var result4 = String()
    let label = UILabel()
    
    //中塚さん・・・変数名result1 result2 result3 result4を作成し、その値が渡ってくるので、その値をラベルを4つつけてそれぞれ表示してください。戻るボタンも作成し、ボタンをタップすると前の画面に戻るようにしてください。
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
        label.frame = CGRect(x:150, y:200, width:160, height:30)
        label.text = "result1"
        self.view.addSubview(label)
        
        label.frame = CGRect(x:150, y:200, width:160, height:30)
        label.text = "result2"
               self.view.addSubview(label)
        
        label.frame = CGRect(x:150, y:200, width:160, height:30)
        label.text = "result3"
        self.view.addSubview(label)
        
        
        label.frame = CGRect(x:150, y:200, width:160, height:30)
        label.text = "result4"
        self.view.addSubview(label)
        
        
    }


}

