/*


Abstract:
The main view controller.
*/

import UIKit
import CoreLocation
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, UITextFieldDelegate {
    @IBOutlet var mapView: MKMapView!
    private let locationManager = CLLocationManager()
    
    @IBOutlet var compasImage: UIImageView!
    var annotationView: MKAnnotationView?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Request location authorization so the user's current location can be displayed on the map
        locationManager.requestWhenInUseAuthorization()
        self.mapView.delegate = self
       
    let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tapGesture)
        
    let oldRad:Float = 1.259374
        let newRad:Float = 1.239832

        let theAnimation = CABasicAnimation(keyPath: "transform.rotation")

        theAnimation.fromValue = NSNumber(value: oldRad)
        theAnimation.toValue = NSNumber(value: newRad)

            theAnimation.duration = 0.2
 
        typealias CompletionHandler = (MKMapSnapshotter.Snapshot?, Error?) -> Void
    }
    @IBAction func CaptureImage(_ sender: UIButton, forEvent event: UIEvent) {
        
        typealias CompletionHandler = (MKMapSnapshotter.Snapshot?, Error?) -> Void
        

    }
    
// Objects motion
    @IBOutlet var ObjectView: UIView!
    @IBOutlet var OBJECTS: [UIButton]!
    @IBAction func touched(_ sender: UIButton, forEvent event: UIEvent) {
            
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    // Keyboard fixx

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

    



































// added 2 -----
//weak var viewDrag: MKMapView!
//
//var panGesture = UIPanGestureRecognizer()
//
//func viewDidLoad() {
//    panGesture = UIPanGestureRecognizer(target: self, action: #selector(ViewController))
//    viewDrag.isUserInteractionEnabled = true
//    viewDrag.addGestureRecognizer(panGesture)
//
//func fraggedView(_ sender:UIPanGestureRecognizer){
//        self.view.bringSubview(toFront:viewDrag)
//        let translation = sender.translation(in: self.view)
//        viewDrag.center = CGPoint(x: viewDrag.center.x + translation.x,y: viewDrag.center.y + translation.y)
//        sender.setTranslation(CGPoint.zero, in: self.view)
//    }
//}




// added ---
//    @IBOutlet weak var egres: UIImageView!
//     func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
//
//        let touch : UITouch! = touches.anyObject() as? UITouch
//
//        location = touch.location(in: self.view)
//
//        egres.center = location
//    }
//    func touchesMoved(touches: NSSet!, withEvent event: UIEvent!) {
//
//        let touch : UITouch! = touches.anyObject() as? UITouch
//
//        location = touch.location(in: self.view)
//
//        egres.center = location
//    }


}

