//
//  java_util_List<T>.swift
//  OnekitWX_java
//
//  Created by 张瑾 on 2019/9/27.
//  Copyright © 2019 onekitwx.com. All rights reserved.
//

import Foundation

public class java_util_ArrayList<Element>:java_util_List{
    
    var this:NSMutableArray
    init<L>(_ base: L) where Element == L.Element, L : java_util_List {
    this = NSMutableArray();
}
      
    
    public init(){
        this = [];
    }
    public func get(_ index: Int) -> Element? {
        return this[index] as? Element;
    }
    
    public func count() -> Int {
        return this.count;
    }
    
    
}
