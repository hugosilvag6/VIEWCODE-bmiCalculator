//
//  HomeView.swift
//  bmiCalculator-viewCode
//
//  Created by Hugo Silva on 18/11/22.
//

import UIKit

class HomeView: UIView {
   
   lazy var backgroundImageView = {
      let img = UIImageView()
      img.translatesAutoresizingMaskIntoConstraints = false
      img.image = UIImage(named: "calculate_background")
      img.contentMode = .scaleAspectFill
      return img
   }()
   
   lazy var mainLabel = {
      let lb = UILabel()
      lb.translatesAutoresizingMaskIntoConstraints = false
      lb.text = "Calculate your BMI".uppercased()
      lb.font = .systemFont(ofSize: 40, weight: .bold)
      lb.textColor = .darkGray
      lb.numberOfLines = 0
      return lb
   }()
   
   lazy var calculateButton = {
      let bt = UIButton()
      bt.translatesAutoresizingMaskIntoConstraints = false
      bt.setTitle("Calculate".uppercased(), for: .normal)
      bt.setTitleColor(.white, for: .normal)
      bt.backgroundColor = UIColor(named: "ThemePurple")
      bt.clipsToBounds = true
      bt.layer.cornerRadius = 15
      return bt
   }()
   
   lazy var weightSlider = {
      let slider = UISlider()
      slider.translatesAutoresizingMaskIntoConstraints = false
      slider.isContinuous = true
      slider.minimumValue = 0
      slider.maximumValue = 200
      slider.value = 100
      slider.minimumTrackTintColor = UIColor(named: "ThemePurple")
      slider.maximumTrackTintColor = .lightGray
      slider.thumbTintColor = UIColor(named: "ThemePurple")?.withAlphaComponent(0.5)
      return slider
   }()
   
   lazy var weightLabel = {
      let lb = UILabel()
      lb.translatesAutoresizingMaskIntoConstraints = false
      lb.text = "Weight"
      lb.textColor = .darkGray
      return lb
   }()
   
   lazy var weightValueLabel = {
      let lb = UILabel()
      lb.translatesAutoresizingMaskIntoConstraints = false
      lb.text = "100kg"
      lb.textColor = .darkGray
      return lb
   }()
   
   lazy var heightSlider = {
      let slider = UISlider()
      slider.translatesAutoresizingMaskIntoConstraints = false
      slider.isContinuous = true
      slider.minimumValue = 0
      slider.maximumValue = 3
      slider.value = 1.5
      slider.minimumTrackTintColor = UIColor(named: "ThemePurple")
      slider.maximumTrackTintColor = .lightGray
      slider.thumbTintColor = UIColor(named: "ThemePurple")?.withAlphaComponent(0.5)
      return slider
   }()
   
   lazy var heightLabel = {
      let lb = UILabel()
      lb.translatesAutoresizingMaskIntoConstraints = false
      lb.text = "Height"
      lb.textColor = .darkGray
      return lb
   }()
   
   lazy var heightValueLabel = {
      let lb = UILabel()
      lb.translatesAutoresizingMaskIntoConstraints = false
      lb.text = "1.50m"
      lb.textColor = .darkGray
      return lb
   }()
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      self.setSubviews()
      self.setConstraints()
   }
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}

extension HomeView {
   private func setSubviews () {
      self.addSubview(backgroundImageView)
      self.addSubview(mainLabel)
      self.addSubview(calculateButton)
      self.addSubview(weightSlider)
      self.addSubview(weightLabel)
      self.addSubview(weightValueLabel)
      self.addSubview(heightSlider)
      self.addSubview(heightLabel)
      self.addSubview(heightValueLabel)
   }
   private func setConstraints () {
      NSLayoutConstraint.activate([
         self.backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor),
         self.backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
         self.backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
         self.backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
         
         self.mainLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 150),
         self.mainLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
         self.mainLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
         
         self.calculateButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -20),
         self.calculateButton.leadingAnchor.constraint(equalTo: self.mainLabel.leadingAnchor),
         self.calculateButton.trailingAnchor.constraint(equalTo: self.mainLabel.trailingAnchor),
         self.calculateButton.heightAnchor.constraint(equalToConstant: 60),
         
         self.weightSlider.bottomAnchor.constraint(equalTo: self.calculateButton.topAnchor, constant: -20),
         self.weightSlider.leadingAnchor.constraint(equalTo: self.mainLabel.leadingAnchor),
         self.weightSlider.trailingAnchor.constraint(equalTo: self.mainLabel.trailingAnchor),
         
         self.weightLabel.bottomAnchor.constraint(equalTo: self.weightSlider.topAnchor, constant: -20),
         self.weightLabel.leadingAnchor.constraint(equalTo: self.mainLabel.leadingAnchor),
         
         self.weightValueLabel.bottomAnchor.constraint(equalTo: self.weightSlider.topAnchor, constant: -20),
         self.weightValueLabel.trailingAnchor.constraint(equalTo: self.mainLabel.trailingAnchor),
         
         self.heightSlider.bottomAnchor.constraint(equalTo: self.weightLabel.topAnchor, constant: -20),
         self.heightSlider.leadingAnchor.constraint(equalTo: self.mainLabel.leadingAnchor),
         self.heightSlider.trailingAnchor.constraint(equalTo: self.mainLabel.trailingAnchor),
         
         self.heightLabel.bottomAnchor.constraint(equalTo: self.heightSlider.topAnchor, constant: -20),
         self.heightLabel.leadingAnchor.constraint(equalTo: self.mainLabel.leadingAnchor),
         
         self.heightValueLabel.bottomAnchor.constraint(equalTo: self.heightSlider.topAnchor, constant: -20),
         self.heightValueLabel.trailingAnchor.constraint(equalTo: self.mainLabel.trailingAnchor)
      ])
   }
}
