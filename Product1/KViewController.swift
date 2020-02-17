//
//  KViewController.swift
//  Product1
//
//  Created by Fujii Yuta on 2020/02/17.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

class KViewController: UIViewController {

   
    
    //近藤さん・・・textFieldを2つ作成し、下にラベルを4つ作成し、ボタンを配置。calcModelクラスを新規に作成し、計算モデルを作成してください。
    //textFieldで入力された値を上から入力フォーム1、入力フォーム2、足し算、引き算、割り算、掛け算の結果をボタンが押されたら表示し、2秒後に値を4つNViewControllerへsegueを用いて渡してください。idはnextで大丈夫です。遷移はmodalです。変数名はresult1 result2 result3 result4で大丈夫です。
    
    //入力するテキストフィールド
    var textField1 = UITextField()
    var textField2 = UITextField()
    
    //足し算
    var result1 = UILabel()
    //引き算
    var result2 = UILabel()
    //割り算
    var result3 = UILabel()
    //掛け算
    var result4 = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBlue
        configureTextField()
    }
    

    func configureTextField() {
        view.addSubview(textField1)
        textField1.translatesAutoresizingMaskIntoConstraints = false
        textField1.backgroundColor = .systemGray
        textField1.placeholder = "何か数字を書いてください"
        
        view.addSubview(textField2)
        textField2.translatesAutoresizingMaskIntoConstraints = false
        textField2.backgroundColor = .systemGray
        textField2.placeholder = "何か数字を書いてください"
        
        NSLayoutConstraint.activate([
            textField1.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
                textField1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                textField1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                textField1.heightAnchor.constraint(equalToConstant: 50),
                
                textField2.topAnchor.constraint(equalTo: textField1.topAnchor, constant: 100),
                    textField2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                    textField2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                    textField2.heightAnchor.constraint(equalToConstant: 50),

                
            ])
        
    }
   

}
