//
//  OnboardingViewController.swift
//  TeslaConfiguratorApp
//
//  Created by Max on 09.12.2024.
//

import UIKit

final class OnboardingViewController: UIViewController {
    
    private let titleLabel = {
        let label = UILabel()
        label.text = "Model Y"
        label.font = .Gotham.light.set(size: 55)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let imageView = {
        let view = UIImageView()
        view.contentMode = .scaleToFill
        view.image = UIImage(named: "OnboardingImage")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let parametersStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .equalSpacing
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let rangeStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 8
        view.alignment = .center
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let rangeTitleLabel = {
        let label = UILabel()
        label.font = .Gotham.medium.set(size: 36)
        label.text = "300 mi"
        label.textColor = .white
        return label
    }()
    
    private let lineView = {
        let view = UIView()
        view.backgroundColor = .white
        view.alpha = 0.3
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let rangeSubtitleLabel = {
        let label = UILabel()
        label.font = .Gotham.light.set(size: 14)
        label.text = "Range (EPA est.)"
        label.textColor = .white
        return label
    }()
    
    private let motorStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 8
        view.alignment = .center
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let motorTitleLabel = {
        let label = UILabel()
        label.font = .Gotham.medium.set(size: 36)
        label.text = "AWD"
        label.textColor = .white
        return label
    }()
    
    private let motorSubtitleLabel = {
        let label = UILabel()
        label.font = .Gotham.light.set(size: 14)
        label.text = "Dual Motor"
        label.textColor = .white
        return label
    }()
    
    private let infoStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 16
        view.alignment = .center
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let infoStackViewParamiters = {
        let view = UIStackView()
        view.axis = .vertical
        return view
    }()
    
    private let infoStackViewParamitersMeanings = {
        let view = UIStackView()
        view.axis = .vertical
        return view
    }()
    
    private let accelerationLabel = {
        let label = UILabel()
        label.font = .Gotham.light.set(size: 16)
        label.text = "Acceleration:"
        label.textColor = .CustomColors.pale
        label.textAlignment = .right
        return label
    }()
    
    private let speedLabel = {
        let label = UILabel()
        label.font = .Gotham.light.set(size: 16)
        label.text = "Top speed:"
        label.textColor = .CustomColors.pale
        label.textAlignment = .right
        return label
    }()
    
    private let accelerationLabelMeaning = {
        let label = UILabel()
        label.font = .Gotham.light.set(size: 16)
        label.text = "0-60 mph in 3.5s"
        label.textColor = .white

        return label
    }()
    
    private let speedLabelMeaning = {
        let label = UILabel()
        label.font = .Gotham.light.set(size: 16)
        label.text = "up to 150 mph"
        label.textColor = .white
        return label
    }()
    
    private let orderButton = {
        let button = UIButton()
        button.setTitle("Order now".uppercased(), for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .Gotham.medium.set(size: 20)
        button.layer.cornerRadius = 30
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.red.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupLayout()
        setupTargets()
    }
}

private extension OnboardingViewController {
    func setupUI() {
        view.backgroundColor = .black
        
        // basic blocks
        view.addSubview(titleLabel)
        view.addSubview(imageView)
        view.addSubview(parametersStackView)
        view.addSubview(infoStackView)
        view.addSubview(orderButton)
        
        // 300mi | AWD
        parametersStackView.addArrangedSubview(rangeStackView)
        parametersStackView.addArrangedSubview(lineView)
        parametersStackView.addArrangedSubview(motorStackView)
        
        rangeStackView.addArrangedSubview(rangeTitleLabel)
        rangeStackView.addArrangedSubview(rangeSubtitleLabel)
        
        motorStackView.addArrangedSubview(motorTitleLabel)
        motorStackView.addArrangedSubview(motorSubtitleLabel)
        
        //acceleration & top speed
        infoStackView.addArrangedSubview(infoStackViewParamiters)
        infoStackView.addArrangedSubview(infoStackViewParamitersMeanings)
        infoStackView.spacing = 5
        
        infoStackViewParamiters.addArrangedSubview(accelerationLabel)
        infoStackViewParamiters.addArrangedSubview(speedLabel)
        infoStackViewParamiters.distribution = .equalSpacing
        infoStackViewParamiters.spacing = 15
        
        infoStackViewParamitersMeanings.addArrangedSubview(accelerationLabelMeaning)
        infoStackViewParamitersMeanings.addArrangedSubview(speedLabelMeaning)
        infoStackViewParamitersMeanings.distribution = .equalSpacing
        infoStackViewParamitersMeanings.spacing = 15
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 226)
        ])
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            parametersStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            parametersStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            parametersStackView.topAnchor.constraint(equalTo: imageView.bottomAnchor),
        ])
        
        NSLayoutConstraint.activate([
            lineView.widthAnchor.constraint(equalToConstant: 1)
        ])
    
        NSLayoutConstraint.activate([
            infoStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            infoStackView.topAnchor.constraint(equalTo: parametersStackView.bottomAnchor, constant: 60)
        ])
        
        NSLayoutConstraint.activate([
            infoStackViewParamiters.trailingAnchor.constraint(equalTo: view.centerXAnchor),
            
        ])
        
        NSLayoutConstraint.activate([
            orderButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            orderButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            orderButton.heightAnchor.constraint(equalToConstant: 64),
            orderButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    func setupTargets(){
        orderButton.addTarget(self, action: #selector(orderButtonTapped), for: .touchUpInside)
    }
    
    @objc func orderButtonTapped() {
      
    }
}

