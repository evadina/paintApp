//
//  CustomView.swift
//  PaintApp
//
//  Created by Madina Tazhiyeva on 9/27/20.
//  Copyright © 2020 Madina Tazhiyeva. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    var point1: CGPoint?
    var point2: CGPoint!
    var color: UIColor = .black
    var shape: String = ""
    var isFilled: Bool = true
    
    var arrayOfShapes = [Shape]()
    
    override func draw(_ rect: CGRect) {
        print("draw")
        if let p1 = point1{
            switch shape {
            case "⃝":
                let circle = Circle.init(radius: getRadius(),center: getCircleCenter(), color: color, stroke_width: 5, isFilled: isFilled)
                arrayOfShapes.append(circle)
            case "⌇":
                let line = Line.init(firstTouch: p1, lastTouch: point2, color: color, stroke_width: 5)
                arrayOfShapes.append(line)
            case "△":
                let triangle = Triangle.init(firstTouch: p1, lastTouch: point2, color: color, stroke_width: 5, isFilled: isFilled)
                arrayOfShapes.append(triangle)
            case "☐":
                let rect = Rectangle.init(firstTouch: p1, lastTouch: point2, color: color, stroke_width: 5, isFilled: isFilled)
                arrayOfShapes.append(rect)
            default:
                break
            }
            
        }
       
        for item in arrayOfShapes{
             print("00000")
            item.drawPath()
        }
    }
    
    func getRadius() -> CGFloat{
        var radius: CGFloat = 0.0
        if let p1 = point1{
            let firstPeace = (point2.x - p1.x)*(point2.x - p1.x)
            let secondPeace = (point2.y - p1.y)*(point2.y - p1.y)
            radius = (sqrt(firstPeace + secondPeace))/2
        }
        return radius
    }
    
    func getCircleCenter() -> CGPoint{
        var X: CGFloat = 0.0
        var Y: CGFloat = 0.0
        if let p1 = point1{
            X = (point2.x + p1.x)/2
            Y = (point2.y + p1.y)/2
        }
        return CGPoint(x: X, y: Y)
    }
    
    func removeLastItem(){
        if arrayOfShapes.count > 0{
            print("removelast")
            arrayOfShapes.removeLast()
            point1 = nil
            setNeedsDisplay()
        }
    }
    
    
      func removeAllItems(){
          if arrayOfShapes.count > 0{
              print("removeAll")
              arrayOfShapes.removeAll()
              point1 = nil
              setNeedsDisplay()
          }
      }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            point1 = touch.location(in: self)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            point2 = touch.location(in: self)
        }
        setNeedsDisplay()
    }
    
    
    
}



