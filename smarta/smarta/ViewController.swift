//
//  ViewController.swift
//  smarta
//
//  Created by Julian A. Fordyce on 11/26/20.
//
import UIKit
import Alamofire

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        UIGraphicsBeginImageContext(self.view.frame.size)
//        UIImage(named: "train-stations-map-2020")?.draw(in: self.view.bounds)
//
//        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
//
//        UIGraphicsEndImageContext()
//
//        view.backgroundColor = UIColor(patternImage: image)
        let backgroundImage = UIImage(named: "train-stations-map-2020")
        let backgroundImageView = UIImageView(frame: view.frame)
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.image = backgroundImage
        view.insertSubview(backgroundImageView, at: 0)
                                       
        addBottomSheetView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AF.request("https://third-rail-insecure.services.smartatransit.com/static/stations").response { response in
            debugPrint(response)
        }
    }

    func addBottomSheetView() {
        let bottomSheetVC = BottomSheetViewController()
        self.addChild(bottomSheetVC)
        self.view.addSubview(bottomSheetVC.view)
        bottomSheetVC.didMove(toParent: self)
        
        let height = view.frame.height
        let width  = view.frame.width
        bottomSheetVC.view.frame = CGRect(x: 0, y: view.frame.maxY, width: width, height: height)
    }
}

