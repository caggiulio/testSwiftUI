//
//  ViewController.swift
//  testSwiftUI
//
//  Created by nunzio giulio caggegi on 06/06/2019.
//  Copyright © 2019 nunzio giulio caggegi. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSwiftUI()
        // Do any additional setup after loading the view.
    }
}

extension ViewController {
    func addSwiftUI() {
        var hostView = TestListSwiftUI(clients: Shared.sharedSettings.buildClient())
        /*hostView.text = "My first Text"
        hostView.text1 = "CR7"
        hostView.imageStringCircle = "ronaldo_1"*/
        
        let host = UIHostingController.init(rootView: hostView)
        addChild(host)
        host.view.translatesAutoresizingMaskIntoConstraints = false
        host.view.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        view.addSubview(host.view)
        didMove(toParent: self)
    }
}
