//
//  java_util_List<T>.swift
//  OnekitWX_java
//
//  Created by 张瑾 on 2019/9/27.
//  Copyright © 2019 onekitwx.com. All rights reserved.
//

import Foundation

public protocol java_util_List{
    associatedtype Element
    func get(_ index:Int)->Element?;
    func count()->Int;
}
