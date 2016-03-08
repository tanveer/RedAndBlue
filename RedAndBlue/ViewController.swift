//
//  ViewController.swift
//  RedAndBlue
//
//  Created by Tanveer Bashir on 3/8/16.
//  Copyright © 2016 Tanveer Bashir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redImg: UIImageView!
    @IBOutlet weak var blueImg: UIImageView!
    @IBOutlet weak var showRedBtn: UIButton!
    @IBOutlet weak var showBlueBtn: UIButton!
    @IBOutlet weak var hideBlueBtn: UIButton!
    @IBOutlet weak var hideRedBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        hideBtn(0)
        
        let width = redImg.frame.size.width / 2
        redImg.layer.cornerRadius = width
        redImg.clipsToBounds = true
        blueImg.layer.cornerRadius = width
        blueImg.clipsToBounds = true

    }

    @IBAction func blueBtn(sender: UIButton) {
        UIView.animateWithDuration(0.5) {
            self.blueImg.alpha = 0
            self.hideBlueBtn.alpha = 0
            self.showBlueBtn.alpha = 1

        }
    }

    @IBAction func redBtn(sender: UIButton) {
        UIView.animateWithDuration(0.5) {
            self.redImg.alpha = 0
            self.hideRedBtn.alpha = 0
            self.showRedBtn.alpha = 1
        }
    }

    @IBAction func showRed(sender: UIButton) {
        UIView.animateWithDuration(0.2) {
            self.redImg.alpha = 1
            self.hideRedBtn.alpha = 1
            self.showRedBtn.alpha = 0
        }

    }

    @IBAction func showBlue(sender: UIButton) {
        UIView.animateWithDuration(0.2) {
            self.blueImg.alpha = 1
            self.hideBlueBtn.alpha = 1
            self.showBlueBtn.alpha = 0

        }

    }


    func hideBtn(alpha:CGFloat) {
        showBlueBtn.alpha = alpha
        showRedBtn.alpha = alpha
    }

}

