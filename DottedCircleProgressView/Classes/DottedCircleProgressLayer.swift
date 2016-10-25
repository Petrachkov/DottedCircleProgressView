//
//  DottedCircleProgressView.swift
//  DottedCircleProgressView
//
//  Created by sergey petrachkov on 25/10/2016.
//  Copyright © 2016 actonica. All rights reserved.
//

import Foundation
import UIKit

struct ProgressLayerConfigurator{
	var fillColor : CGColor
	var backgroundColor : CGColor
	var strokeColor: CGColor
	var instanceColor : CGColor
	var frame : CGRect
	var instanceCount : Int
	var dotSize : CGFloat
}

class DottedCircleProgressLayer : CAReplicatorLayer{
	
	convenience init(fillColor : CGColor, backgroundColor: CGColor, strokeColor: CGColor, instanceColor: CGColor, frame: CGRect, instanceCount : Int, dotSize: CGFloat) {
		self.init();
		self.frame = frame
		
		self.instanceCount = instanceCount
		self.instanceDelay = CFTimeInterval(1 / Float(instanceCount))
		self.preservesDepth = false
		self.instanceColor = instanceColor
		
		let angle = Float(M_PI * 2.0) / Float(instanceCount)
		self.instanceTransform = CATransform3DMakeRotation(CGFloat(angle), 0.0, 0.0, 1.0)
		
		
		let instanceLayer = CAShapeLayer()
		instanceLayer.frame = CGRect(
			x: 0,
			y: 0,
			width: dotSize,
			height: dotSize)
		instanceLayer.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: dotSize, height: dotSize)).cgPath
		instanceLayer.strokeColor = strokeColor
		instanceLayer.backgroundColor = backgroundColor
		instanceLayer.fillColor = fillColor
		self.addSublayer(instanceLayer)
		
		
		let fadeAnimation = CABasicAnimation(keyPath: "opacity")
		fadeAnimation.isRemovedOnCompletion = false;
		fadeAnimation.fromValue = 1.0
		fadeAnimation.toValue = 0.0
		fadeAnimation.duration = 1
		fadeAnimation.repeatCount = Float(Int.max)
		
		
		instanceLayer.opacity = 0.0
		instanceLayer.add(fadeAnimation, forKey: "FadeAnimation")
	}
	
	convenience init(progressConfig: ProgressLayerConfigurator) {
		self.init();
		self.frame = progressConfig.frame;
		self.instanceCount = progressConfig.instanceCount;
		self.instanceDelay = CFTimeInterval(1 / Float(progressConfig.instanceCount))
		self.preservesDepth = false
		self.instanceColor = progressConfig.instanceColor
		
		let angle = Float(M_PI * 2.0) / Float(progressConfig.instanceCount)
		self.instanceTransform = CATransform3DMakeRotation(CGFloat(angle), 0.0, 0.0, 1.0)
		
		
		let instanceLayer = CAShapeLayer()
		instanceLayer.frame = CGRect(
			x: 0,
			y: 0,
			width: progressConfig.dotSize,
			height: progressConfig.dotSize)
		instanceLayer.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: progressConfig.dotSize, height: progressConfig.dotSize)).cgPath
		instanceLayer.strokeColor = progressConfig.strokeColor
		instanceLayer.backgroundColor = progressConfig.backgroundColor
		instanceLayer.fillColor = progressConfig.fillColor
		self.addSublayer(instanceLayer)
		
		
		let fadeAnimation = CABasicAnimation(keyPath: "opacity")
		fadeAnimation.isRemovedOnCompletion = false;
		fadeAnimation.fromValue = 1.0
		fadeAnimation.toValue = 0.0
		fadeAnimation.duration = 1
		fadeAnimation.repeatCount = Float(Int.max)
		
		
		instanceLayer.opacity = 0.0
		instanceLayer.add(fadeAnimation, forKey: "FadeAnimation")
	}
}
