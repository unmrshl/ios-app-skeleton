/* Copyright (c) 2022 unmrshl LLC. All Rights Reserved. */

import UIKit
import SwiftUI

@objc class RootViewController : UIViewController {

    private let rootView: RootView
    private var contentHostingController: UIHostingController<ContentView>
    
    init() {
        self.rootView = RootView()
        self.contentHostingController = rootView.contentHostingController
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChild(contentHostingController)
        view.addSubview(rootView)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        let windowFrame = UIScreen.main.bounds
        self.rootView.translatesAutoresizingMaskIntoConstraints = false
        self.rootView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        self.rootView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        self.rootView.heightAnchor.constraint(equalToConstant: windowFrame.height).isActive = true
        self.rootView.widthAnchor.constraint(equalToConstant: windowFrame.width).isActive = true
    }
}
