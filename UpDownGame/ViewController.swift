//
//  ViewController.swift
//  UpDownGame
//
//  Created by 김태현 on 2022/02/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var upDownManager = UpDownManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        mainLabel.text = "선택하세요"
        numberLabel.text = ""
        upDownManager.resetNum()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {

        guard let numString = sender.currentTitle else { return }
        numberLabel.text = numString

        guard let num = Int(numString) else { return }
        upDownManager.setUsersNum(num: num)
    }


    @IBAction func selectButtonTapped(_ sender: UIButton) {

        guard let myNumString = numberLabel.text, let myNumber = Int(myNumString) else { return }

        upDownManager.setUsersNum(num: myNumber)
        mainLabel.text = upDownManager.getUpDownResult()
    }


        // 1) 컴퓨터 숫자와 내가 선택한 숫자 비교해서 Up/Down/Bingo (메인레이블)




    @IBAction func resetButtonTapped(_ sender: UIButton) {


        configureUI()

    }
    
}

