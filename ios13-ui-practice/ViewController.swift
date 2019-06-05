//
//  ViewController.swift
//  ios13-ui-practice
//
//  Created by jinsei_shima on 2019/06/05.
//  Copyright © 2019 jinsei_shima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let segment = UISegmentedControl()
        segment.insertSegment(withTitle: "1", at: 0, animated: false)
        segment.insertSegment(withTitle: "2", at: 1, animated: false)
        segment.insertSegment(withTitle: "3", at: 2, animated: false)
        
        segment.frame = .init(x: 0, y: 0, width: 120, height: 40)
        segment.tintColor = .darkGray
        segment.backgroundColor = .lightGray
        segment.needsUpdateConstraints()
        
        let activity = UIActivityIndicatorView(style: .large)
        activity.color = .darkGray
        activity.startAnimating()
        
        let stackView = UIStackView(arrangedSubviews: [
            segment,
            activity
            ])
        stackView.axis = .vertical
        stackView.frame = view.bounds
        stackView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(stackView)
    }


}

