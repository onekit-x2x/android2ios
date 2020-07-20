//
//  java_lang_Integer.swift
//  OnekitWX_java
//
//  Created by 张瑾 on 2019/9/26.
//  Copyright © 2019 onekitwx.com. All rights reserved.
//

import Foundation
open class java_lang_Integer{
    public static let MAX_VALUE:Int = Int(INT_MAX)
    public static func parseInt(_ string:java_lang_String?)->Int{
        if java_lang_String.isEmpty(string!) {
            return 0;
        }
        return (string!.this! as NSString).integerValue
    }
}
