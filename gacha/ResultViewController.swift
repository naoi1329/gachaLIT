//
//  ResultViewController.swift
//  gacha
//
//  Created by 直井翔汰 on 2018/04/11.
//  Copyright © 2018年 直井翔汰. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var monsterNameLabel: UILabel!
    @IBOutlet weak var monsterImageView: UIImageView!
    @IBOutlet var haikeiImageView: UIImageView!
    
    let monsters: [(UIImage, String)] = [(UIImage(named: "monster001.png")!, "ニャンシす"),
                                         (UIImage(named: "monster002.png")!, "いちご金魚"),
                                         (UIImage(named: "monster003.png")!, "化石"),
                                         (UIImage(named: "monster004.png")!, "クリオネーション"),
                                         (UIImage(named: "monster005.png")!, "會"),
                                         (UIImage(named: "monster006.png")!, "レッドドラゴ"),
                                         (UIImage(named: "monster007.png")!, "闇のまじゅちゅし"),
                                         (UIImage(named: "monster008.png")!, "キングドラ"),
                                         (UIImage(named: "monster009.png")!, "闇の魔術師"),
                                         (UIImage(named: "monster010.png")!, "カイザ"),
                                         ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let index = Int(arc4random()) % monsters.count
        self.monsterImageView.image = monsters[index].0
        self.monsterNameLabel.text = monsters[index].1
        
        self.haikeiImageView.image = haikeiImage(index: index)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let animation = CABasicAnimation(keyPath: "transform")
        //アニメーション開始の値
        animation.fromValue = NSNumber(value: 0)
        //アニメーション終了時の値　(0 ~ 2π)
        animation.toValue = NSNumber(value: 2 * Double.pi)
        // z軸を中心としたアニメーション
        animation.valueFunction = CAValueFunction(name: kCAValueFunctionRotateZ)
        
        //アニメーションの速さh
        animation.duration = 5
        
        animation.repeatCount = Float.infinity
        
        //アニメーション開始の値
        animation.fromValue = NSNumber(value: 0)
        //アニメーション終了時の値　(0 ~ 2π)
        animation.toValue = NSNumber(value: 2 * Double.pi)
        // z軸を中心としたアニメーション
        animation.valueFunction = CAValueFunction(name: kCAValueFunctionRotateZ)
        
        //アニメーションの速さh
        animation.duration = 5
        
        animation.repeatCount = Float.infinity
        
        haikeiImageView.layer.add(animation, forKey: nil)
    }
    
    func haikeiImage(index: Int) -> UIImage {
        if index >= 9 {
            return UIImage(named: "bg_gold@2x.png")!
        } else if index > 6 {
            return UIImage(named: "bg_red@2x.png")!
        } else {
            return UIImage(named: "bg_blue@2x.png")!
        }
    }
    @IBAction func returnTitle(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
