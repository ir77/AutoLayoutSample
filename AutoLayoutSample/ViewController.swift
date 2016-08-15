//
//  ViewController.swift
//  AutoLayoutSample
//
//  Created by 内村祐之 on 2016/08/15.
//  Copyright © 2016年 ucuc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addNavigationBar()
    }
    
    func addNavigationBar() {
        // let frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        let separator = UIView()
        separator.backgroundColor = .blackColor()
        separator.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(separator)
        
        self.view.addConstraints([
            
            // self.veiwの上から0pxの位置に配置
            NSLayoutConstraint(
                item: separator,
                attribute: NSLayoutAttribute.Top,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view,
                attribute: NSLayoutAttribute.Top,
                multiplier: 1.0,
                constant: 22
            ),
            
            // self.viewの横幅いっぱいにする
            NSLayoutConstraint(
                item: separator,
                attribute: NSLayoutAttribute.Left,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view,
                attribute: NSLayoutAttribute.Left,
                multiplier: 1.0,
                constant: 10
            ),

            NSLayoutConstraint(
                item: separator,
                attribute: NSLayoutAttribute.Right,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view,
                attribute: NSLayoutAttribute.Right,
                multiplier: 1.0,
                constant: -10
            ),

            // self.viewのレイアウトに関わらず高さは64px
            NSLayoutConstraint(
                item: separator,
                attribute: NSLayoutAttribute.Height,
                relatedBy: NSLayoutRelation.Equal,
                toItem: nil,
                attribute: NSLayoutAttribute.Height,
                multiplier: 1.0,
                constant: 64
            )]
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

