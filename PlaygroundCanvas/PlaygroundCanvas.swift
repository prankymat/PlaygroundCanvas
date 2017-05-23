//
//  PlaygroundCanvas.swift
//  PlaygroundCanvas
//
//  Created by Matthew Wo on 5/22/17.
//  Copyright © 2017 Matthew Wo. All rights reserved.
//

import UIKit

public class PlaygroundCanvas: UIView {
    public convenience init?(with view: UIView, backgroundColor background: UIColor = .white, padding: [Double] = [10,10,10,10]) {
        guard padding.count == 4 else {
            return nil
        }
        
        let viewWidth = Double(view.bounds.width)
        let viewHeight = Double(view.bounds.height)
        let (top, right, bottom, left) = (padding[0], padding[1], padding[2], padding[3])
        let frame = CGRect(x: 0, y: 0, width: viewWidth + left + right, height: viewHeight + top + bottom)
        
        self.init(frame: frame)
        
        self.backgroundColor = background
        view.frame = CGRect(x: left, y: top, width: viewWidth, height: viewHeight)
        self.addSubview(view)
    }
}
