//
//  Triangle.swift
//  PaintApp
//
//  Created by Madina Tazhiyeva on 9/27/20.
//  Copyright © 2020 Madina Tazhiyeva. All rights reserved.
//

import Foundation
import UIKit


class Triangle: Shape {
    private var firstTouch: CGPoint
    private var lastTouch: CGPoint
    private var color: UIColor
    private var stroke_width: CGFloat
    private var isFilled: Bool
    
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
    
    func drawPath() {
        let path = UIBezierPath()
        path.move(to: firstTouch)
        path.addLine(to: CGPoint(x: firstTouch.x, y: lastTouch.y))
        path.addLine(to: lastTouch)
        path.addLine(to: firstTouch)
        color.set()
        path.lineWidth = stroke_width
        (isFilled) ? (path.fill()) : (path.stroke())
        
        path.stroke()
    }
    
}


