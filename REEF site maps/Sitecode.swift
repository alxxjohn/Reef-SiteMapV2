//
//  Sitecode.swift
//  Reef Site Maps
//
//  Created by alex on 2/18/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation
import UIKit

//01 create delegation
class MyViewController2: UIViewController,UITextFieldDelegate {

  @IBOutlet weak var txtField: UITextField!=nil

    override func viewDidLoad() {
      super.viewDidLoad()
      // additional setup after loading the view

      //02 set delegate to textfield
      txtField.delegate = self
    }

    //03 textfield func for the return key
    private func textFieldShouldReturn(textField: UITextField) -> Bool {
      txtField.resignFirstResponder()
      return true;
    }

    //textfield func for the touch on BG
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
      txtField.resignFirstResponder()
      self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      //dispose of any resources that can be recreated
    }
  }
