//
//  Rectangle.swift
//  PaintApp
//
//  Created by Madina Tazhiyeva on 9/27/20.
//  Copyright © 2020 Madina Tazhiyeva. All rights reserved.
//

import Foundation
import UIKit

class Rectangle: Shape{
 
    
    var isFilled: Bool
    var firstTouch: CGPoint
    var lastTouch: CGPoint
    var color: UIColor
    var stroke_width: CGFloat
    
    
    init(firstTouch: CGPoint,
         lastTouch: CGPoint,
         color: UIColor,
         stroke_width: CGFloat,
         isFilled: Bool){
        
        self.firstTouch = firstTouch
        self.lastTouch = lastTouch
        self.color = color
        self.stroke_width = stroke_width
        self.isFilled = isFilled
    }
    
    func drawPath(){
        let path = UIBezierPath()
        path.move(to: firstTouch)
        path.addLine(to: CGPoint(x: firstTouch.x, y: lastTouch.y))
        path.addLine(to: lastTouch)
        path.addLine(to: CGPoint(x: lastTouch.x, y: firstTouch.y))
        path.addLine(to: firstTouch)
        color.set()
        path.lineWidth = stroke_width
        (isFilled) ? (path.fill()) : (path.stroke())
        path.stroke()
    }
    
    
    
    
    
    
    
    
    
    
    
    
}




