//
//  ViewController.swift
//  Calculatorapp
//
//  Created by YangJeongMu on 12/24/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // 화면에 표시할 "0"
    var displayNumber: String = "0"
    
    // 12345 -> 초기값 "0" 으로
    let label = UILabel()
    
    // 789+
    let button7 = UIButton()
    let button8 = UIButton()
    let button9 = UIButton()
    let buttonPlus = UIButton()
    
    // 456-
    let button4 = UIButton()
    let button5 = UIButton()
    let button6 = UIButton()
    let buttonMinus = UIButton()
    
    // 123*
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let buttonTimes = UIButton()
    
    // ac0=/
    let buttonAC = UIButton()
    let button0 = UIButton()
    let buttonEquals = UIButton()
    let buttonDivide = UIButton()
    
    // 스택뷰 생성
    let horizontalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .black
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }()
    // 스택뷰2 생성
    let horizontalStackView2: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .black
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }()
    // 스택뷰3 생성
    let horizontalStackView3: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .black
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    // 스택뷰4 생성
    let horizontalStackView4: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .black
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    private func configureUI() {
        view.backgroundColor = .black
        
        setupLabel()
        setupConstraints()
        setupButton()
        setupButton2()
        setupButton3()
        setupButton4()
        setupStackView()
        setupStackView2()
        setupStackView3()
        setupStackView4()
    }
    
    // 12345
    private func setupLabel() {
        label.text = "0"
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
    
    // 7,8,9,+ 버튼
    private func setupButton() {
        
        // 7
        button7.setTitle("7", for: .normal)
        button7.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button7.setTitleColor(.white, for: .normal)
        button7.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button7.layer.cornerRadius = 40
        button7.addTarget(self, action: #selector(button7Tapped), for: .touchUpInside)
        
        // 8
        button8.setTitle("8", for: .normal)
        button8.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button8.setTitleColor(.white, for: .normal)
        button8.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button8.layer.cornerRadius = 40
        button8.addTarget(self, action: #selector(button8Tapped), for: .touchUpInside)
        
        // 9
        button9.setTitle("9", for: .normal)
        button9.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button9.setTitleColor(.white, for: .normal)
        button9.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button9.layer.cornerRadius = 40
        button9.addTarget(self, action: #selector(button9Tapped), for: .touchUpInside)
        
        // +
        buttonPlus.setTitle("+", for: .normal)
        buttonPlus.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        buttonPlus.setTitleColor(.white, for: .normal)
        buttonPlus.backgroundColor = .orange
        buttonPlus.layer.cornerRadius = 40
        buttonPlus.addTarget(self, action: #selector(buttonPlusTapped), for: .touchUpInside)
    }
    // 4,5,6,- 버튼
    private func setupButton2() {
        
        // 4
        button4.setTitle("4", for: .normal)
        button4.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button4.setTitleColor(.white, for: .normal)
        button4.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button4.layer.cornerRadius = 40
        button4.addTarget(self, action: #selector(button4Tapped), for: .touchUpInside)
        
        // 5
        button5.setTitle("5", for: .normal)
        button5.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button5.setTitleColor(.white, for: .normal)
        button5.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button5.layer.cornerRadius = 40
        button5.addTarget(self, action: #selector(button5Tapped), for: .touchUpInside)
        
        // 6
        button6.setTitle("6", for: .normal)
        button6.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button6.setTitleColor(.white, for: .normal)
        button6.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button6.layer.cornerRadius = 40
        button6.addTarget(self, action: #selector(button6Tapped), for: .touchUpInside)
        
        // -
        buttonMinus.setTitle("-", for: .normal)
        buttonMinus.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        buttonMinus.setTitleColor(.white, for: .normal)
        buttonMinus.backgroundColor = .orange
        buttonMinus.layer.cornerRadius = 40
        buttonMinus.addTarget(self, action: #selector(buttonMinusTapped), for: .touchUpInside)
        
    }
    
    // 1,2,3,* 버튼
    private func setupButton3() {
        
        // 1
        button1.setTitle("1", for: .normal)
        button1.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button1.setTitleColor(.white, for: .normal)
        button1.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button1.layer.cornerRadius = 40
        button1.addTarget(self, action: #selector(button1Tapped), for: .touchUpInside)
        
        // 2
        button2.setTitle("2", for: .normal)
        button2.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button2.setTitleColor(.white, for: .normal)
        button2.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button2.layer.cornerRadius = 40
        button2.addTarget(self, action: #selector(button2Tapped), for: .touchUpInside)
        
        // 3
        button3.setTitle("3", for: .normal)
        button3.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button3.setTitleColor(.white, for: .normal)
        button3.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button3.layer.cornerRadius = 40
        button3.addTarget(self, action: #selector(button3Tapped), for: .touchUpInside)
        
        // *
        buttonTimes.setTitle("*", for: .normal)
        buttonTimes.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        buttonTimes.setTitleColor(.white, for: .normal)
        buttonTimes.backgroundColor = .orange
        buttonTimes.layer.cornerRadius = 40
        buttonTimes.addTarget(self, action: #selector(buttonTimesTapped), for: .touchUpInside)
    
    }
    
    // AC,0,=,/ 버튼
    private func setupButton4() {
        
        // AC
        buttonAC.setTitle("AC", for: .normal)
        buttonAC.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        buttonAC.setTitleColor(.white, for: .normal)
        buttonAC.backgroundColor = .orange
        buttonAC.layer.cornerRadius = 40
        buttonAC.addTarget(self, action: #selector(buttonACTapped), for: .touchUpInside)
        
        // 0
        button0.setTitle("0", for: .normal)
        button0.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button0.setTitleColor(.white, for: .normal)
        button0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button0.layer.cornerRadius = 40
        button0.addTarget(self, action: #selector(button0Tapped), for: .touchUpInside)
        
        // =
        buttonEquals.setTitle("=", for: .normal)
        buttonEquals.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        buttonEquals.setTitleColor(.white, for: .normal)
        buttonEquals.backgroundColor = .orange
        buttonEquals.layer.cornerRadius = 40
        buttonEquals.addTarget(self, action: #selector(buttonEqualsTapped), for: .touchUpInside)
        
        // Divide
        buttonDivide.setTitle("/", for: .normal)
        buttonDivide.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        buttonDivide.setTitleColor(.white, for: .normal)
        buttonDivide.backgroundColor = .orange
        buttonDivide.layer.cornerRadius = 40
        buttonDivide.addTarget(self, action: #selector(buttonDivideTapped), for: .touchUpInside)
    }
    
    // 스택뷰
    
    func setupStackView() {
        view.addSubview(horizontalStackView)
        horizontalStackView.addArrangedSubview(button7)
        horizontalStackView.addArrangedSubview(button8)
        horizontalStackView.addArrangedSubview(button9)
        horizontalStackView.addArrangedSubview(buttonPlus)
        
        horizontalStackView.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(80)
        }
        
    }
    
    func setupStackView2() {
        view.addSubview(horizontalStackView2)
        horizontalStackView2.addArrangedSubview(button4)
        horizontalStackView2.addArrangedSubview(button5)
        horizontalStackView2.addArrangedSubview(button6)
        horizontalStackView2.addArrangedSubview(buttonMinus)
        
        horizontalStackView2.snp.makeConstraints { make in
            make.top.equalTo(horizontalStackView.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(80)
            make.centerX.equalToSuperview()
        }
    }
    
    func setupStackView3() {
        view.addSubview(horizontalStackView3)
        horizontalStackView3.addArrangedSubview(button1)
        horizontalStackView3.addArrangedSubview(button2)
        horizontalStackView3.addArrangedSubview(button3)
        horizontalStackView3.addArrangedSubview(buttonTimes)
        
        horizontalStackView3.snp.makeConstraints { make in
            make.top.equalTo(horizontalStackView2.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(80)
            make.centerX.equalToSuperview()
        }
    }
    
    func setupStackView4() {
        view.addSubview(horizontalStackView4)
        horizontalStackView4.addArrangedSubview(buttonAC)
        horizontalStackView4.addArrangedSubview(button0)
        horizontalStackView4.addArrangedSubview(buttonEquals)
        horizontalStackView4.addArrangedSubview(buttonDivide)
        
        horizontalStackView4.snp.makeConstraints { make in
            make.top.equalTo(horizontalStackView3.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(80)
            make.centerX.equalToSuperview()
        }
    }
    
    @objc func button7Tapped() {
        if label.text == "0" {
            label.text = "7"
        } else {
            label.text = label.text! + "7"
        }
    }
    
    @objc func button8Tapped() {
        if label.text == "0" {
            label.text = "8"
        } else {
            label.text = label.text! + "8"
        }
    }
    
    @objc func button9Tapped() {
        if label.text == "0" {
            label.text = "9"
        } else {
            label.text = label.text! + "9"
        }
    }
    
    @objc func buttonPlusTapped() {
        if label.text == "0" {
            label.text = "+"
        } else {
            label.text = label.text! + "+"
        }
    }
    
    @objc func button4Tapped() {
        if label.text == "0" {
            label.text = "4"
        } else {
            label.text = label.text! + "4"
        }
    }
    
    @objc func button5Tapped() {
        if label.text == "0" {
            label.text = "5"
        } else {
            label.text = label.text! + "5"
        }
    }
    
    @objc func button6Tapped() {
        if label.text == "0" {
            label.text = "6"
        } else {
            label.text = label.text! + "6"
        }
    }
    
    @objc func buttonMinusTapped() {
        if label.text == "0" {
            label.text = "-"
        } else {
            label.text = label.text! + "-"
        }
    }
    
    @objc func button1Tapped() {
        if label.text == "0" {
            label.text = "1"
        } else {
            label.text = label.text! + "1"
        }
    }
    
    @objc func button2Tapped() {
        if label.text == "0" {
            label.text = "2"
        } else {
            label.text = label.text! + "2"
        }
    }
    
    @objc func button3Tapped() {
        if label.text == "0" {
            label.text = "3"
        } else {
            label.text = label.text! + "3"
        }
    }
    
    @objc func buttonTimesTapped() {
        if label.text == "0" {
            label.text = "*"
        } else {
            label.text = label.text! + "*"
        }
    }
    
    @objc func buttonACTapped() {
        if label.text == "0" {
            label.text = "AC"
        } else {
            label.text = label.text! + "AC"
        }
    }
    
    @objc func button0Tapped() {
        if label.text == "0" {
            label.text = "0"
        } else {
            label.text = label.text! + "0"
        }
    }
    
    @objc func buttonEqualsTapped() {
        if label.text == "0" {
            label.text = "="
        } else {
            label.text = label.text! + "="
        }
    }
    
    @objc func buttonDivideTapped() {
        if label.text == "0" {
            label.text = "/"
        } else {
            label.text = label.text! + "/"
        }
    }
    
}
