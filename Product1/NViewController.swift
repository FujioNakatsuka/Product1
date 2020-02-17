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
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    
    //中塚さん・・・変数名result1 result2 result3 result4を作成し、その値が渡ってくるので、その値をラベルを4つつけてそれぞれ表示してください。戻るボタンも作成し、ボタンをタップすると前の画面に戻るようにしてください。
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
        label1.frame = CGRect(x:150, y:250, width:160, height:30)
        label1.text = result1
        self.view.addSubview(label1)
        
        label2.frame = CGRect(x:150, y:300, width:160, height:30)
        label2.text = result2
               self.view.addSubview(label2)
        
        label3.frame = CGRect(x:150, y:350, width:160, height:30)
        label3.text = result3
        self.view.addSubview(label3)
        
        
        label4.frame = CGRect(x:150, y:400, width:160, height:30)
        label4.text = result4
        self.view.addSubview(label4)
        
        
    }


}

