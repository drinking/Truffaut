//
//  SlidesWindowController.swift
//  Truffaut
//
//  Created by Yan Li on 4/15/16.
//  Copyright © 2016 Codezerker. All rights reserved.
//

import Cocoa

class SlidesWindowController: NSWindowController {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        window?.applyTransparentTitlebarStyle()

        if let contentViewController = contentViewController as? SlidesViewController {
            contentViewController.windowController = self
        }
    }
}

extension SlidesWindowController: StoryboardInstantiatable {
    
    typealias ControllerType = SlidesWindowController
}
