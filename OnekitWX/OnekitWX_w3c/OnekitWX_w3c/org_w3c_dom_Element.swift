//
//  org_w3c_dom_Element.swift
//  OnekitWX_w3c
//
//  Created by 张瑾 on 2019/9/27.
//  Copyright © 2019 onekitwx.com. All rights reserved.
//

import Foundation
import OnekitWX_java
open class org_w3c_dom_Element:org_w3c_dom_Node{
    open func getElementsByTagName(_ name:java_lang_String)->org_w3c_dom_NodeList{
        return org_w3c_dom_NodeList();
    }
    open func getAttribute(_ name:java_lang_String)->java_lang_String{
        return java_lang_String("");
    }
    open func getFirstChild()->org_w3c_dom_Node{
        return org_w3c_dom_Element();
    }
    open func getNodeValue() -> java_lang_String {
        return java_lang_String("");
    }
}
