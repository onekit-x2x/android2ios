//
//  OnekitWX.swift
//  OnekitWX_java
//
//  Created by 张瑾 on 2019/9/26.
//  Copyright © 2019 onekitwx.com. All rights reserved.
//

import Foundation
public extension NSObject{
    func toString()->java_lang_String{
        return java_lang_String(type(of: self).description())
    }
}
public extension java_lang_String{
    func description()->java_lang_String{
        return java_lang_String(self.this!)
    }
}
/*
public func + (left:Any, right:java_lang_String) -> java_lang_String {
    let result = (left as! NSObject).description+right.this!;
    return java_lang_String(result);
}
public func + (left:java_lang_String, right:Any) -> java_lang_String {
    let result = left.this!+(right as! NSObject).description;
    return java_lang_String(result);
}
 */
public func + (left:Any?, right:Any?) -> java_lang_String {
    var str1:String,str2:String;
    if(left==nil){
        str1 = "null";
    }else{
        str1 = "\(left!)";
    }
    if(right==nil){
        str2 = "null";
    }else{
        str2 = "\(right!)";
    }
    return java_lang_String(str1+str2);
}
