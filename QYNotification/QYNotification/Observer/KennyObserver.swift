//
//  KennyObserver.swift
//  QYNotification
//
//  Created by zhuqunye on 2019/3/19.
//  Copyright © 2019年 zhuqunye. All rights reserved.
//

import Foundation

class KennyObserver: Observer {
    func update(o: Observable, msg: Any?) {
        if msg != nil {
            print("Kenny, hello world:\(msg!)");
        }
    }
}
