//
//  Circle.swift
//  PaintApp
//
//  Created by Madina Tazhiyeva on 9/27/20.
//  Copyright © 2020 Madina Tazhiyeva. All rights reserved.
//

import Foundation
import UIKit

class Circle:Shape{
    private var radius: CGFloat = 0.0
    private var circle_center: CGPoint
    private var color: UIColor
    private var stroke_width: CGFloat = 0.0
    private var isFilled: Bool = false
    
    init(radius: CGFloat,
         center circle_center: CGPoint,
         color: UIColor,
         stroke_width: CGFloat,
         isFilled: Bool){
        
        self.radius = radius
        self.circle_center = circle_center
        self.color = color
        self.stroke_width = stroke_width
        self.isFilled = isFilled
    }
    
    func drawPath(){
        let path = UIBezierPath(arcCenter: circle_center,
                                radius: radius,
                                startAngle: 0,
                                endAngle: 2*Double.pi.cg,
                                clockwise: true)
        path.lineWidth = stroke_width
        color.set()
        (isFilled) ? (path.fill()) : (path.stroke())
    }
    
    
   
    
    
    
    
}




