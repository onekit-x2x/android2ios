//
//  android_util_Log.swift
//  OnekitWX_android
//
//  Created by 张瑾 on 2019/9/30.
//  Copyright © 2019 onekitwx.com. All rights reserved.
//

import Foundation
import OnekitWX_java
open class android_util_Log{
    public static func d(_ tag:java_lang_String,_ debug:java_lang_String){
        print("[DEBUG] \(tag.this!) \(debug.this!)")
    }
    public static func i(_ tag:java_lang_String,_ info:java_lang_String){
        print("[INFO] \(tag.this!) \(info.this!)")
    }
    public static func w(_ tag:java_lang_String,_ warning:java_lang_String){
        print("[WARING] \(tag.this!) \(warning.this!)")
    }
    public static func e(_ tag:java_lang_String,_ error:java_lang_String){
        print("[ERROR] \(tag.this!) \(error.this!)")
    }
}
