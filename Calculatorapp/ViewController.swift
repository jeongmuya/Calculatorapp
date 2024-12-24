//
//  ViewController.swift
//  Calculatorapp
//
//  Created by YangJeongMu on 12/24/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let label = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    private func configureUI() {
        view.backgroundColor = .black
        
        setupLabel()
        setupConstraints()
        
    }
    
    // 12345
    private func setupLabel() {
        label.text = "12345"
        label.textColor = .white
        label.font = .systemFont(ofSize: 60, weight: .bold)
        label.textAlignment = .right
        
        view.addSubview(label)
    }
    
    // 12345 위치
    
    private func setupConstraints() {
        label.snp.makeConstraints { make in
            make.height.equalTo(100)
            make.leading.trailing.equalToSuperview().inset(30)
            make.top.equalToSuperview().inset(200)
            
        }
        
    }
    
    
    
}


