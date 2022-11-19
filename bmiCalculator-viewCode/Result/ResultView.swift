//
//  ResultScreen.swift
//  bmiCalculator-viewCode
//
//  Created by Hugo Silva on 18/11/22.
//

import UIKit

class ResultView: UIView {
   
   lazy var backgroundImageView = {
      let img = UIImageView()
      img.translatesAutoresizingMaskIntoConstraints = false
      img.image = UIImage(named: "result_background")
      img.contentMode = .scaleAspectFill
      return img
   }()
   
   lazy var resultLabel = {
      let lb = UILabel()
      lb.text = "Your result".uppercased()
      lb.textAlignment = .center
      lb.translatesAutoresizingMaskIntoConstraints = false
      lb.font = .systemFont(ofSize: 35, weight: .bold)
      lb.textColor = .white
      return lb
   }()
   
   lazy var resultValueLabel = {
      let lb = UILabel()
      lb.text = "10.0"
      lb.textAlignment = .center
      lb.translatesAutoresizingMaskIntoConstraints = false
      lb.font = .systemFont(ofSize: 80, weight: .bold)
      lb.textColor = .white
      return lb
   }()
   
   lazy var suggestionLabel = {
      let lb = UILabel()
      lb.text = "Suggestion".uppercased()
      lb.textAlignment = .center
      lb.translatesAutoresizingMaskIntoConstraints = false
      lb.font = .systemFont(ofSize: 20)
      lb.textColor = .white
      return lb
   }()
   
   lazy var recalculateButton = {
      let bt = UIButton()
      bt.translatesAutoresizingMaskIntoConstraints = false
      bt.setTitle("Recalculate".uppercased(), for: .normal)
      bt.setTitleColor(UIColor(named: "ThemePurple"), for: .normal)
      bt.backgroundColor = .white
      bt.clipsToBounds = true
      bt.layer.cornerRadius = 15
      return bt
   }()
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      self.setBackground()
      self.setSubviews()
      self.setConstraints()
   }
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
}

extension ResultView {
   private func setBackground () {
      self.backgroundColor = UIColor(named: "ThemeBlue")
   }
   private func setSubviews () {
      self.addSubview(backgroundImageView)
      self.addSubview(resultLabel)
      self.addSubview(resultValueLabel)
      self.addSubview(suggestionLabel)
      self.addSubview(recalculateButton)
   }
   private func setConstraints () {
      NSLayoutConstraint.activate([
         self.backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
         self.backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
         self.backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
         
         self.resultValueLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
         self.resultValueLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
         self.resultValueLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
         
         self.resultLabel.bottomAnchor.constraint(equalTo: self.resultValueLabel.topAnchor, constant: -10),
         self.resultLabel.leadingAnchor.constraint(equalTo: self.resultValueLabel.leadingAnchor),
         self.resultLabel.trailingAnchor.constraint(equalTo: self.resultValueLabel.trailingAnchor),
         
         self.suggestionLabel.topAnchor.constraint(equalTo: self.resultValueLabel.bottomAnchor, constant: 10),
         self.suggestionLabel.leadingAnchor.constraint(equalTo: self.resultValueLabel.leadingAnchor),
         self.suggestionLabel.trailingAnchor.constraint(equalTo: self.resultValueLabel.trailingAnchor),
         
         self.recalculateButton.leadingAnchor.constraint(equalTo: self.resultValueLabel.leadingAnchor),
         self.recalculateButton.trailingAnchor.constraint(equalTo: self.resultValueLabel.trailingAnchor),
         self.recalculateButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -20),
         self.recalculateButton.heightAnchor.constraint(equalToConstant: 60)
      ])
   }
}
