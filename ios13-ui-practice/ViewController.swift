//
//  ViewController.swift
//  ios13-ui-practice
//
//  Created by jinsei_shima on 2019/06/05.
//  Copyright © 2019 jinsei_shima. All rights reserved.
//

import UIKit
import EasyPeasy

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UIKit Difference
        // https://developer.apple.com/documentation/uikit/views_and_controls?changes=latest_minor
        
        let segment = UISegmentedControl(items: [
            "Tokyo", "SanJose", "Korean"
            ])
        segment.tintColor = .darkGray
        segment.backgroundColor = .lightGray
        segment.layoutIfNeeded()        
        segment.setContentCompressionResistancePriority(.required, for: .horizontal)
        
        let activity = UIActivityIndicatorView(style: .medium)
        activity.color = .orange
        activity.startAnimating()

        let stepper = UIStepper()
        stepper.maximumValue = 100
        stepper.minimumValue = 0
        stepper.largeContentTitle = "title"
        stepper.addTarget(self, action: #selector(didChangeStepperValue(sender:)), for: .valueChanged)
        stepper.tintColor = .darkGray
        stepper.backgroundColor = .lightGray
        stepper.autorepeat = true
        stepper.layer.cornerRadius = 8
        stepper.layer.cornerCurve = .continuous
        stepper.clipsToBounds = true

        let switchView = UISwitch()
        switchView.tintColor = .darkGray
        switchView.backgroundColor = .clear
        switchView.onTintColor = .orange
        switchView.thumbTintColor = .systemGroupedBackground
        
        let slider = UISlider()
        slider.maximumValue = 100
        slider.minimumValue = 0
        slider.minimumTrackTintColor = .lightGray
        slider.maximumTrackTintColor = .darkGray
        slider.thumbTintColor = .systemGroupedBackground
        slider.tintColor = .darkGray
        
        let stackView = UIStackView(arrangedSubviews: [
            segment,
            activity,
            stepper,
            switchView,
            slider
            ])
        stackView.spacing = 24
        stackView.alignment = .center
        stackView.axis = .vertical
        view.addSubview(stackView)
        
        stackView.easy.layout(
            Center()
        )
    }

    @objc func didChangeStepperValue(sender: UIStepper) {
        print("sender value:", sender.value)
    }

}

