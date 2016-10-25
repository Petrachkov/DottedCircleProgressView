//
//  DottedCircleProgressView.swift
//  DottedCircleProgressView
//
//  Created by sergey petrachkov on 25/10/2016.
//  Copyright © 2016 actonica. All rights reserved.
//

import Foundation
import UIKit

open class DottedCircleProgressView: UIView{
	
	var progressLayer : DottedCircleProgressLayer!
	private override init(frame: CGRect) {
		super.init(frame: frame);
	}
	
	public convenience init(frame: CGRect, progressConfigurator : ProgressLayerConfigurator) {
		self.init(frame: frame);
		self.progressLayer = DottedCircleProgressLayer(progressConfig: progressConfigurator);
		self.layer.addSublayer(self.progressLayer);
	}
	
	required public init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
