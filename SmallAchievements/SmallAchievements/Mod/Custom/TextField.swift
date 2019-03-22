//
//  TextField.swift
//  SmallAchievements
//
//  Created by George on 21/03/2019.
//  Copyright © 2019 crowcode. All rights reserved.
//

import UIKit

public class BigTextField: UITextField{

    lazy var backgroundView: UIView = {
        let view = UIView()
        view.frame = self.frame
        
        view.backgroundColor = .red
        return view
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        compInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        compInit()
    }
    
    func compInit() {
        self.borderStyle = .roundedRect
        self.addSubview(backgroundView)
    }

}
