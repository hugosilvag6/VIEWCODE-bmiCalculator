//
//  HomeVC.swift
//  bmiCalculator-viewCode
//
//  Created by Hugo Silva on 18/11/22.
//

import UIKit

class HomeVC: UIViewController {
   
   var screen: HomeView?
   var height: Double = 1.5
   var weight: Int = 100
   
   override func loadView() {
      self.screen = HomeView()
      self.view = self.screen
   }
   override func viewDidLoad() {
      super.viewDidLoad()
      self.configActions()
   }
}

extension HomeVC {
   private func configActions () {
      self.screen?.heightSlider.addTarget(self, action: #selector(heightSliderChanged), for: .valueChanged)
      self.screen?.weightSlider.addTarget(self, action: #selector(weightSliderChanged), for: .valueChanged)
      self.screen?.calculateButton.addTarget(self, action: #selector(calculateButtonPressed), for: .touchUpInside)
   }
}

extension HomeVC {
   @objc func heightSliderChanged (_ sender: UISlider) {
      self.screen?.heightValueLabel.text = "\(String(format: "%.2f", sender.value))m"
      self.height = Double(String(format: "%.2f", sender.value)) ?? 1.5
   }
   @objc func weightSliderChanged (_ sender: UISlider) {
      self.screen?.weightValueLabel.text = "\(Int(sender.value))kg"
      self.weight = Int(sender.value)
   }
   @objc func calculateButtonPressed () {
      let resultVC = ResultVC()
      resultVC.bmi = Double(self.weight) / (self.height * self.height)
      self.navigationController?.present(resultVC, animated: true)
   }
}
