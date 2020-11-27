//
//  ViewController.swift
//  smarta
//
//  Created by Julian A. Fordyce on 11/26/20.
//
import UIKit

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"login.png"]];
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "train-stations-map-2020")?.draw(in: self.view.bounds)

        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!

        UIGraphicsEndImageContext()

        view.backgroundColor = UIColor(patternImage: image)
                                       
        addBottomSheetView()
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

