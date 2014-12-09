//
//  DismissSegue.swift
//  FirstiOS
//
//  Created by smap on 2014/12/09.
//  Copyright (c) 2014年 smap. All rights reserved.
//

import UIKit

@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {
   
    override func perform(){
        if let controller = sourceViewController.presentingViewController?{
            controller.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}
