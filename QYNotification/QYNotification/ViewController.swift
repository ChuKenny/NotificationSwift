//
//  ViewController.swift
//  QYNotification
//
//  Created by zhuqunye on 2019/3/19.
//  Copyright © 2019年 zhuqunye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let observable = WxEmsObservable()
        let kennyO = KennyObserver()
        let LilyO = LilyObserver()
        observable.addObserver(o: kennyO)
        observable.addObserver(o: LilyO)
        observable.setTitle(title: "群野公众号")
        observable.notifyObservers(msg: "you have Win $10000000 brand")
        observable.push();
        observable.push();
        observable.push();

    }


}

