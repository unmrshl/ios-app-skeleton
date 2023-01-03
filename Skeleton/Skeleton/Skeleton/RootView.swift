/* Copyright (c) 2022 unmrshl LLC. All Rights Reserved. */

import UIKit
import SwiftUI

class RootView : UIView {
    
    private let contentView: UIView
    let contentHostingController: UIHostingController<ContentView>
    
    init() {
        self.contentHostingController = UIHostingController(rootView: ContentView())
        self.contentView = contentHostingController.view
        
        super.init(frame: .zero)
        
        addSubview(contentView)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = .black
        
        let windowFrame = UIScreen.main.bounds
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.topAnchor.constraint(equalTo: self.topAnchor, constant: 50.0).isActive = true
        self.contentView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50.0).isActive = true
        self.contentView.widthAnchor.constraint(equalToConstant: windowFrame.width).isActive = true
    }
}
