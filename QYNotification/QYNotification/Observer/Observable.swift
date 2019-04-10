//
//  Observable.swift
//  QYNotification
//
//  Created by zhuqunye on 2019/3/19.
//  Copyright © 2019年 zhuqunye. All rights reserved.
//

import Foundation

class Observable: NSObject {
    private var obs: Array<Observer>?
    private var changed:Bool = false

    override init() {
        super.init();
        self.obs = Array<Observer>();
    }
    
    func addObserver(o:Observer){
        self.obs?.append(o);
    }
    
    func deleteObserver(o:Observer) -> Void {
        self.obs?.removeLast();
    }
    
    func deleteAllObserver() -> Void {
        self.obs?.removeAll()
    }
    
    func notiferObservers() -> Void {
        
    }
    
    func notifyObservers(msg:Any) -> Void {
        if !self.changed {
            return
        }
        //修改状态
        self.clearChanged()
        
        self.obs?.forEach({ (o) in
            o.update(o:self, msg:msg)
            })
    }
    
    func countObserver() -> Int {
        return (self.obs?.count)!;
    }
    
    //设置更新
    func setChanged() {
        self.changed = true
    }
    
    //取消更新
    func clearChanged() {
        self.changed = false
    }
    
    //是否发生了更新
    func hasChanged() -> Bool {
        return self.changed
    }
}
