//
//  SiteMapViewController.swift
//  Reef Site Maps
//
//  Created by alex on 2/24/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class SiteMapViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var SiteMapImage: UIImageView!
    @IBOutlet weak var outerImgView: UIImageView!
    @IBOutlet weak var innerImgView: UIImageView!
    @IBOutlet weak var greasetank: UIImageView!
    var panGesture  = UIPanGestureRecognizer()


    @IBAction func scaleImg(_ sender: UIPinchGestureRecognizer) {
     innerImgView.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
    }
        override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tapGesture)
        
        let gestureRecognizer = UITapGestureRecognizer(target:self , action: #selector(gestureFired(_:)))
        gestureRecognizer.numberOfTapsRequired = 1
        gestureRecognizer.numberOfTouchesRequired = 1
        innerImgView.addGestureRecognizer(gestureRecognizer)
        SiteMapImage.isUserInteractionEnabled = true
    }
   @objc func gestureFired(_ gester: UITapGestureRecognizer){
        print("gesture")
    }
    @objc func dragImg(_ sender:UIPanGestureRecognizer){
            let translation = sender.translation(in: self.view)
            innerImgView.center = CGPoint(x: innerImgView.center.x + translation.x, y: innerImgView.center.y + translation.y)
            sender.setTranslation(CGPoint.zero, in: self.view)

        
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
    @IBOutlet var textField: UITextField!

        @IBAction func EndText(_ sender: UITextField) {

            func viewDidLoad() {
                super.viewDidLoad()

                textField.delegate = self

            }

            func textFieldShouldReturn(_ TextField: UITextField) -> Bool {
                textField.resignFirstResponder()
                return true
            }

            func textFieldShouldReturn(textField: UITextField) -> Bool {
                textField.resignFirstResponder()
                return true
            }



            func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
                self.view.endEditing(true)
            }

        

     }

    
    
    
    
    
    
    
}
