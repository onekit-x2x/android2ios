//
//  javax_xml_parsers_DocumentBuilder.swift
//  OnekitWX_javax
//
//  Created by 张瑾 on 2019/9/27.
//  Copyright © 2019 onekitwx.com. All rights reserved.
//

import Foundation
import OnekitWX_java
import OnekitWX_w3c
open class javax_xml_parsers_DocumentBuilder{
    open func parse(_ inputstream:java_io_InputStream)->org_w3c_dom_Document{
        return org_w3c_dom_Document();
    }
}
