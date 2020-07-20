//
//  org_w3c_dom_NodeList.swift
//  OnekitWX_w3c
//
//  Created by 张瑾 on 2019/9/27.
//  Copyright © 2019 onekitwx.com. All rights reserved.
//

import Foundation
open class org_w3c_dom_NodeList{
    open func getLength()->Int{
        return 0;
    }
    open func item(_ index:Int)->org_w3c_dom_Node{
        return org_w3c_dom_Element();
    }
}
