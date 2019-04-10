//
//  WxEmsObservable.swift
//  QYNotification
//
//  Created by zhuqunye on 2019/3/19.
//  Copyright © 2019年 zhuqunye. All rights reserved.
//

import Foundation


class WxEmsObservable: Observable {
    
    private var title:String?
    
    func setTitle(title:String) {
        if (self.title != title) {
            setChanged()
        }
        self.title = title
    }
    
    func push() {
        if self.title != nil {
            notifyObservers(msg: self.title!)
        }
    }
    
}
