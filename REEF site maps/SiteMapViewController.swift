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
        
    }
    @IBAction func PanGrease(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .began || sender.state == .changed{
            let translation = sender.translation(in: sender.view)
            let changeX = (sender.view?.center.x)! + translation.x
            let changeY = (sender.view?.center.y)! + translation.y
            
            sender.view?.center = CGPoint(x: changeX, y: changeY)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
    }
    
    @IBAction func PanDumpster(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed{
            let translation = sender.translation(in: sender.view)
            let changeX = (sender.view?.center.x)! + translation.x
            let changeY = (sender.view?.center.y)! + translation.y
            
            sender.view?.center = CGPoint(x: changeX, y: changeY)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
    }
    @IBAction func PanGrey(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed{
            let translation = sender.translation(in: sender.view)
            let changeX = (sender.view?.center.x)! + translation.x
            let changeY = (sender.view?.center.y)! + translation.y
            
            sender.view?.center = CGPoint(x: changeX, y: changeY)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
    }
    @IBAction func PanVessel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed{
            let translation = sender.translation(in: sender.view)
            let changeX = (sender.view?.center.x)! + translation.x
            let changeY = (sender.view?.center.y)! + translation.y
            
            sender.view?.center = CGPoint(x: changeX, y: changeY)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
    }
    @IBAction func PanPower(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed{
            let translation = sender.translation(in: sender.view)
            let changeX = (sender.view?.center.x)! + translation.x
            let changeY = (sender.view?.center.y)! + translation.y
            
            sender.view?.center = CGPoint(x: changeX, y: changeY)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
    }
    @IBAction func PanWater(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed{
            let translation = sender.translation(in: sender.view)
            let changeX = (sender.view?.center.x)! + translation.x
            let changeY = (sender.view?.center.y)! + translation.y
            
            sender.view?.center = CGPoint(x: changeX, y: changeY)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
    }
    @IBAction func PanEgres(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed{
            let translation = sender.translation(in: sender.view)
            let changeX = (sender.view?.center.x)! + translation.x
            let changeY = (sender.view?.center.y)! + translation.y
            
            sender.view?.center = CGPoint(x: changeX, y: changeY)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
    }
    @IBAction func PanRestroom(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed{
            let translation = sender.translation(in: sender.view)
            let changeX = (sender.view?.center.x)! + translation.x
            let changeY = (sender.view?.center.y)! + translation.y
            
            sender.view?.center = CGPoint(x: changeX, y: changeY)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
    }
    @IBAction func PinchVessel(_ sender: UIPinchGestureRecognizer) {
        if let recognizerView = sender.view {
            recognizerView.transform = recognizerView.transform.rotated(by: sender.scale)
            sender.scale = 0

            let radians:Double = atan2( Double(recognizerView.transform.b), Double(recognizerView.transform.a))
            let degrees = radians * Double((180 / Float.pi))

            if sender.state == .ended || sender.state == .cancelled {
            var degreeToScale:CGFloat = 0

                switch degrees {
                case -45...45:
                    print("the default value 0, no need to any assign...")
                case 46...135:
                    degreeToScale = CGFloat(Double.pi/2)
                case 136...180, -180 ... -136:
                    degreeToScale = CGFloat(Double.pi)
                case -135 ... -46:
                    degreeToScale = CGFloat(-Double.pi/2)
                default:
                    print("!")
                }

    }
  }
}
    @IBAction func RotVessel(_ sender: UIRotationGestureRecognizer) {
        if let recognizerView = sender.view {
            recognizerView.transform = recognizerView.transform.rotated(by: sender.rotation)
            sender.rotation = 0

            let radians:Double = atan2( Double(recognizerView.transform.b), Double(recognizerView.transform.a))
            let degrees = radians * Double((180 / Float.pi))

            if sender.state == .ended || sender.state == .cancelled {
            var degreeToAnimate:CGFloat = 0

                switch degrees {
                case -45...45:
                    print("the default value 0, no need to any assign...")
                case 46...135:
                    degreeToAnimate = CGFloat(Double.pi/2)
                case 136...180, -180 ... -136:
                    degreeToAnimate = CGFloat(Double.pi)
                case -135 ... -46:
                    degreeToAnimate = CGFloat(-Double.pi/2)
                default:
                    print("!")
                }
            
    }
    
 }
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
    @IBOutlet weak var MapCapture: UIImageView!
    
}

// OLD CODE FOR GESTURES

//        let gestureRecognizer = UITapGestureRecognizer(target:self , action: #selector(gestureFired(_:)))
//        gestureRecognizer.numberOfTapsRequired = 1
//        gestureRecognizer.numberOfTouchesRequired = 1
//        innerImgView.addGestureRecognizer(gestureRecognizer)
//        SiteMapImage.isUserInteractionEnabled = true



//    @objc func gestureFired(_ gester: UITapGestureRecognizer){
//        print("gesture")
//    }
//    @objc func dragImg(_ sender:UIPanGestureRecognizer){
//            let translation = sender.translation(in: self.view)
//            innerImgView.center = CGPoint(x: innerImgView.center.x + translation.x, y: innerImgView.center.y + translation.y)
//            sender.setTranslation(CGPoint.zero, in: self.view)

        
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//}
