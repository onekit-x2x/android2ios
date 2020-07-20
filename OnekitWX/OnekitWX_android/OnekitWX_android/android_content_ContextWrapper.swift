//
//  android_content_ContextWrapper.swift
//  OnekitWX_android
//
//  Created by 张瑾 on 2019/9/29.
//  Copyright © 2019 onekitwx.com. All rights reserved.
//

import Foundation
open class android_content_ContextWrapper:android_content_Context{
    open func getResources()->android_content_res_Resource{
        return android_content_res_Resource();
    }
}
