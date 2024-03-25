//
//  CircleView.swift
//  excercise1
//
//  Created by Dam Hung on 23/03/2024.
//

import UIKit

class CircleView: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        // Lấy context vẽ
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        // Đặt màu cho hình tròn
        context.setFillColor(UIColor.red.cgColor)
        
        // Vẽ hình tròn
        let centerX = rect.size.width / 2.0
        let centerY = rect.size.height / 2.0
        let radius = min(centerX, centerY) // Bán kính là nửa chiều rộng hoặc nửa chiều cao
        context.addArc(center: CGPoint(x: centerX, y: centerY), radius: radius, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        context.fillPath()
        
    }
}

