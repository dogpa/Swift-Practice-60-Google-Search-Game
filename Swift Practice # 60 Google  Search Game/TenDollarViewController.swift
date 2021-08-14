//
//  TenDollarViewController.swift
//  Swift Practice # 60 Google  Search Game
//
//  Created by CHEN PEIHAO on 2021/8/14.
//

import UIKit

class TenDollarViewController: UIViewController {
    //顯示結果圖片
    @IBOutlet weak var showDollarImage: UIImageView!
    //顯示結果label
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //建立function判斷結果
    func throwDollar () {
        //隨機亂數
        let index = Int.random(in: 0...1)
        showDollarImage.image = UIImage(named: "\(index)")
        //根據不同亂數做出不同的判斷
        if index == 0 {
            resultLabel.text = "正面"
        }else if index == 1 {
            resultLabel.text = "反面"
        }
    }

    @IBAction func excuteThrew(_ sender: Any) {
        //執行自定義function
        throwDollar()
        
    }

}
