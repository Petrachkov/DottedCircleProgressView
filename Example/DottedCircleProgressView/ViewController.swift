//
//  ViewController.swift
//  DottedCircleProgressView
//
//  Created by sergey petrachkov on 10/25/2016.
//  Copyright (c) 2016 sergey petrachkov. All rights reserved.
//

import UIKit
import DottedCircleProgressView

class ViewController: UIViewController {
	var progressView : DottedCircleProgressView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let frame = CGRect(x: self.view.frame.width * 0.5 - 33 * 0.5,
		                   y: self.view.frame.height * 0.5 - 33 * 0.5,
		                   width: 33,
		                   height: 33)
		let progressConfig  = ProgressLayerConfigurator(fillColor: UIColor.white.cgColor,
		                                               backgroundColor: UIColor.white.cgColor,
		                                               strokeColor: UIColor.white.cgColor,
		                                               instanceColor: UIColor.white.cgColor,
		                                               frame: CGRect(x: 9,
                                                                 y: 9,
                                                                 width: frame.width - 18,
                                                                 height: frame.height - 18),
		                                               instanceCount: 8,
		                                               dotSize: 3)

		self.progressView = DottedCircleProgressView(frame: frame,
                                            progressConfigurator: progressConfig)
		self.progressView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
		self.progressView.layer.cornerRadius = progressView.frame.size.width * 0.5
		self.progressView.clipsToBounds = true
		self.view.addSubview(self.progressView)
		
		let visibilitySwitch = UISwitch(frame: CGRect(x: self.view.frame.width * 0.5 - 50 * 0.5,
		                                              y: progressView.frame.maxY + 10,
		                                              width: 60,
		                                              height: 40))
		visibilitySwitch.addTarget(self,
                               action: #selector(ViewController.switchStateChanged(sender:)),
                               for: .valueChanged)
		visibilitySwitch.isOn = true
		self.view.addSubview(visibilitySwitch)
	}
	
	func switchStateChanged(sender : UISwitch) {
		progressView.isHidden = !sender.isOn
	}
}
