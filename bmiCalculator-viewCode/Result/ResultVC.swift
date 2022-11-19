//
//  ResultVC.swift
//  bmiCalculator-viewCode
//
//  Created by Hugo Silva on 18/11/22.
//

import UIKit

class ResultVC: UIViewController {
   
   var screen: ResultView?
   var bmi: Double?
   
   override func loadView() {
      self.screen = ResultView()
      self.view = self.screen
   }
   override func viewDidLoad() {
      super.viewDidLoad()
      self.configLabels()
      self.configActions()
   }
}

extension ResultVC {
   private func configActions () {
      self.screen?.recalculateButton.addTarget(self, action: #selector(recalculateButtonPressed), for: .touchUpInside)
   }
   private func configLabels () {
      self.screen?.resultValueLabel.text = "\(String(format: "%.1f", self.bmi ?? 2))"
      if (bmi ?? 20) < 18.5 {
         self.screen?.suggestionLabel.text = "Eat more pies!".uppercased()
      } else if (bmi ?? 20) < 24.9 {
         self.screen?.suggestionLabel.text = "Fit as a fiddle!".uppercased()
      } else {
         self.screen?.suggestionLabel.text = "Eat less pies!".uppercased()
      }
   }
}

extension ResultVC {
   @objc func recalculateButtonPressed () {
      self.dismiss(animated: true)
   }
}
