//
//  Line.swift
//  PaintApp
//
//  Created by Madina Tazhiyeva on 9/27/20.
//  Copyright © 2020 Madina Tazhiyeva. All rights reserved.
//

import Foundation
import UIKit

class Line:Shape {
    private var firstTouch: CGPoint
    private var lastTouch: CGPoint
    private var color: UIColor
    private var stroke_width: CGFloat
 
    
    init(firstTouch: CGPoint,
         lastTouch: CGPoint,
         color: UIColor,
         stroke_width: CGFloat){
        
        self.firstTouch = firstTouch
        self.lastTouch = lastTouch
        self.color = color
        self.stroke_width = stroke_width
    }
    
    func drawPath(){
        let path = UIBezierPath()
        path.move(to: firstTouch)
        path.addLine(to: lastTouch)
        color.set()
        path.lineWidth = stroke_width
        path.stroke()
    }
    
  
    
    
    
}
