//
//  android_content_res_Resource.swift
//  OnekitWX_android
//
//  Created by 张瑾 on 2019/9/30.
//  Copyright © 2019 onekitwx.com. All rights reserved.
//

import Foundation
import OnekitWX_java
open class android_content_res_Resource{
    open func getAssets()->android_content_res_AssetManager{
        return android_content_res_AssetManager();
    }
}
