//
//  Observer.swift
//  QYNotification
//
//  Created by zhuqunye on 2019/3/19.
//  Copyright © 2019年 zhuqunye. All rights reserved.
//

import Foundation

//观察者
protocol Observer {
    
    //收到通知
    func update(o:Observable,msg:Any?)
    
}
