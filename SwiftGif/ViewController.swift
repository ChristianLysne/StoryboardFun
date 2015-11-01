//
//  ViewController.swift
//  SwiftGif
//
//  Created by Christian Lysne on 07/10/15.
//  Copyright © 2015 Aller. All rights reserved.
//

import UIKit

@IBDesignable class CustomView : UIView {
    @IBInspectable var tapColor: UIColor!
    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
        didSet {
            self.layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var testView: CustomView!
    @IBOutlet weak var testViewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    
    @IBAction func buttonTapped(sender: AnyObject) {
        testView.backgroundColor = self.testView.tapColor
        
        self.view.layoutIfNeeded()
        UIView.animateWithDuration(0.5) { () -> Void in
            self.testViewHeightConstraint.constant += 50;
            self.view.layoutIfNeeded()
        }
    }
}

