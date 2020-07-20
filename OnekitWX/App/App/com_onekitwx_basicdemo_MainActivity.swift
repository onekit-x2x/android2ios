//
//  ViewController.swift
//  App
//
//  Created by 张瑾 on 2019/9/21.
//  Copyright © 2019 onekitwx.com. All rights reserved.
//

import UIKit
import OnekitWX_java
import OnekitWX_w3c
import OnekitWX_javax
import OnekitWX_android
import OnekitWX_appcompat
public class Person{
    init(){
        
    }
    var id:Int = 0;
    var name:java_lang_String? = nil;
    var age:Int = 0;
    public func toString()->java_lang_String{
        return id+java_lang_String(" ")+name!+java_lang_String(" ")+age;
    }
}

open class com_onekitwx_basicdemo_MainActivity: androidx_appcompat_app_AppCompatActivity {
    override public init(){
        super.init();
    }
    public required init?(coder: NSCoder) {
        super.init(coder:coder);
    }
    override open func onCreate(_ savedInstanceState:android_os_Bundle) {
        super.onCreate(savedInstanceState);
        self.view.backgroundColor = UIColor.red
        
        //   super.onCreate(savedInstanceState);
        /*self.setContentView(com_onekitwx_basicdemo.R.layout.activity_main);
         android_widget_LinearLayout root = self.findViewById(com_onekitwx_basicdemo.R.id.root);
         //
         android_widget_TextView textView1 = android$widget$TextView alloc(self);
         textView1.setText("A");
         textView1.setBackgroundColor(android_graphics_Color.RED);
         root.addView(textView1);
         android_widget_LinearLayout_LayoutParams lp1 = android_widget_LinearLayout_LayoutParams(100,100);
         textView1.setLayoutParams(lp1);*/
        //
        /* TextView textView2 = new TextView(this);
         textView2.setText("B");
         textView2.setBackgroundColor(Color.YELLOW);
         root.addView(textView2);
         LinearLayout.LayoutParams lp2 = new LinearLayout.LayoutParams(100,100);
         textView2.setLayoutParams(lp2);*/
        /*
         android$widget$TextView* textView = [[android$widget$TextView alloc]initWithcontext:self];
         [textView setText:@"Hello, world!"];
         [textView setBackgroundColor:[android$graphics$Color RED]];
         [root addView:textView];
         androidx$coordinatorlayout$widget$CoordinatorLayout$LayoutParams* lp = [[androidx$coordinatorlayout$widget$CoordinatorLayout$LayoutParams alloc]initWithwidth:[androidx$coordinatorlayout$widget$CoordinatorLayout$LayoutParams MATCH_PARENT] height:[androidx$coordinatorlayout$widget$CoordinatorLayout$LayoutParams MATCH_PARENT]];
         [textView setLayoutParams:lp];*/
        //androidx$appcompat$widget$Toolbar* toolbar = [self findViewById:R.id.toolbar];
        //[self setSupportActionBar:toolbar];
        
        //com$google$android$material$floatingactionbutton$FloatingActionButton* fab = [self findViewById:R.id.fab];
        /*[fab setOnClickListener:new View.OnClickListener() {
         @Override
         open void onClick(View view) {
         Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
         .setAction("Action", null).show();
         }
         });*/
        // }
        
        let fileName:java_lang_String = java_lang_String("");
        let persons = java_util_ArrayList<java_lang_String>();
        //1首先利用DocumentBuilderFactory 创建一个DocumentBuilderFactory实例
        let factory = javax_xml_parsers_DocumentBuilderFactory.newInstance();
        var onekit_is: java_io_InputStream? = nil;
        do{
            //2利用DocumentBuilderFactory 创建一个DocumentBuilder实例
            let builder = factory.newDocumentBuilder();
            onekit_is = self.getResources().getAssets().open(fileName);
            //3加载整个文档(Document)
            let document = builder.parse(onekit_is!);
            //4获取文档的根节点(Element)
            let element = document.getDocumentElement();
            //5获取根节点下所有标签为person的子节点
            let items:org_w3c_dom_NodeList = element.getElementsByTagName(java_lang_String("person"));
        {var i = 0
            while(i < items.getLength()){
                {
                    let person =  Person();
                    //得到一个person节点
                    let personNode:org_w3c_dom_Element = items.item(i) as! org_w3c_dom_Element
                    //得到person节点中的id的属性值
                    person.id = java_lang_Integer.parseInt(personNode.getAttribute(java_lang_String("id")))
                    let name = ( personNode.getElementsByTagName(java_lang_String("name")).item(0)as!org_w3c_dom_Element);
                    person.name = name.getFirstChild().getNodeValue();
                    let age = ( personNode.getElementsByTagName(java_lang_String("age")).item(0)as!org_w3c_dom_Element);
                    person.age = java_lang_Integer.parseInt(age.getFirstChild().getNodeValue());
                    //  persons.add(person);
                    
                }();
                i+=1;
            }
            }();
            {
                var onekit=0;
                while(onekit<persons.count()){
                    let person = persons.get(onekit)
                    android_util_Log.e(java_lang_String("persion "),person+java_lang_String(""));
                    onekit += 1;
                }
            }();
        } catch {
            /*
             e.printStackTrace();
             } catch ( e:IOException) {
             e.printStackTrace();
             } catch ( e:SAXException) {
             e.printStackTrace();*/
        }
        do{
            do {
                onekit_is!.close();
            } catch {
                /*
                 }( e:java_io_IOException) {
                 e.printStackTrace();
                 }*/
            }
        }
    }
}
