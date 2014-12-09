//
//  AddTaskViewController.swift
//  FirstiOS
//
//  Created by smap on 2014/12/09.
//  Copyright (c) 2014年 smap. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var noteField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "dismissAndSave" {
            let task = Task(title: titleField.text, note: noteField.text)
            TaskCollection.singleton.add(task)
        }
    }

}
