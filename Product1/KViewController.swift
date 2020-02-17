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
    let textField1 = UITextField()
    let textField2 = UITextField()
    
    //足し算の結果
    var result1 = UILabel()
    //引き算の結果
    var result2 = UILabel()
    //割り算の結果
    var result3 = UILabel()
    //掛け算の結果
    var result4 = UILabel()
    

    
    //計算結果を出すボタン
    var actionButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBlue
        configureTextField()
        configureLabel()
        configureButton()
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
    
    func configureLabel() {
        view.addSubview(result1)
        result1.translatesAutoresizingMaskIntoConstraints = false
        result1.textColor = .systemOrange
        result1.text = "足し算の結果が出ます"
        
        view.addSubview(result2)
        result2.translatesAutoresizingMaskIntoConstraints = false
        result2.textColor = .systemOrange
        result2.text = "引き算の結果が出ます"
        
        view.addSubview(result3)
        result3.translatesAutoresizingMaskIntoConstraints = false
        result3.textColor = .systemOrange
        result3.text = "割り算の結果が出ます"
        
        view.addSubview(result4)
        result4.translatesAutoresizingMaskIntoConstraints = false
        result4.textColor = .systemOrange
        result4.text = "掛け算の結果が出ます"
        
        NSLayoutConstraint.activate([
            result1.topAnchor.constraint(equalTo: textField2.topAnchor, constant: 150),
            result1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            result1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            result1.heightAnchor.constraint(equalToConstant: 50),
            
            result2.topAnchor.constraint(equalTo: result1.topAnchor, constant: 80),
            result2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            result2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            result2.heightAnchor.constraint(equalToConstant: 50),
            
            result3.topAnchor.constraint(equalTo: result2.topAnchor, constant: 80),
            result3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            result3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            result3.heightAnchor.constraint(equalToConstant: 50),
            
            result4.topAnchor.constraint(equalTo: result3.topAnchor, constant: 80),
            result4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            result4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            result4.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    func configureButton() {
        view.addSubview(actionButton)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.backgroundColor = .systemRed
        actionButton.setTitle("計算結果", for: .normal)
        actionButton.addTarget(self, action: #selector(calc), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
        actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        actionButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    

    @objc func calc() {
        //計算クラスのインスタンス化
        
        
        let calcModel = CalcModel(CalcA: Int(textField1.text!)!, CalcB: Int(textField2.text!)!)
        
        let num1 = calcModel.plus()
        let num2 = calcModel.min()
        let num3 = calcModel.div()
        let num4 = calcModel.mult()
        
        result1.text = String(num1)
        result2.text = String(num2)
        result3.text = String(num3)
        result4.text = String(num4)
    }
    
    
    
}
