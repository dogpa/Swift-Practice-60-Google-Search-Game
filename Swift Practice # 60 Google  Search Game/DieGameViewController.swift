//
//  DieGameViewController.swift
//  Swift Practice # 60 Google  Search Game
//
//  Created by CHEN PEIHAO on 2021/8/14.
//

import UIKit

class DieGameViewController: UIViewController {
    
    //建立骰子照片collection
    @IBOutlet var dieImageArray: [UIImageView]!
    //骰子數量
    @IBOutlet weak var dieNumbersSegmentedController: UISegmentedControl!
    //結果點數label
    @IBOutlet weak var showTotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //骰子數量的action
    @IBAction func numbersDiesToChoose(_ sender: UISegmentedControl) {
        //numbersOfDie 定義為選定的segmented的值
        let numbersOfDie = sender.selectedSegmentIndex
        //值每次改變 都重置照片到問號
        for index in 0...dieImageArray.count-1{
            dieImageArray[index].image = UIImage(systemName: "questionmark")
        }
        //不同的值顯示不同數量的骰子
        for i in 0...numbersOfDie {
            dieImageArray[i].isHidden = false
        }
        for i in (numbersOfDie+1)...dieImageArray.count {
            if i < 6 {
                dieImageArray[i].isHidden = true
            }
        }
        
    }
    
    
    //執行骰子遊戲的按鈕Action
    @IBAction func throwDie(_ sender: Any) {
        //定義骰子數量
        let howManyDie = dieNumbersSegmentedController.selectedSegmentIndex
        //定義變數加總使用
        var totalDie = 0
        //迴圈數量透過剛剛定義的骰子數量決定接著改變照片顯示
        //另外將指定數量的骰子點數加總
        for dice in 0...howManyDie {
            
            let random = Int.random(in: 1...6)
            totalDie += random
            //print(totalDie)
            dieImageArray[dice].image = UIImage(systemName: "die.face.\(random)")
        }
        print(totalDie)
        showTotalLabel.text = "共\(totalDie)點"
        
    }

}
