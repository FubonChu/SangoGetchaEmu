//
//  ResultViewController.swift
//  三國志戰略版抽卡模擬器
//
//  Created by Fubon Chu on 13/7/2021.
//

import UIKit
//import GoogleMobileAds

class ResultViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    var cardOneName: String? = "Hidden"
    var cardTwoName: String? = "Hidden"
    var cardThreeName: String? = "Hidden"
    var cardFourName: String? = "Hidden"
    var cardFiveName: String? = "Hidden"
    
    
    @IBAction func backMain(_ sender: UIButton) {
//        calculatorBrain.resetStat()
        if let parentview = presentingViewController as? ViewController{
            parentview.resultTextView.text = calculatorBrain.updateStat()
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func drawOne(_ sender: UIButton) {
        sender.isEnabled = false
        calculatorBrain.calculateDrawOne()
        cardOneName = calculatorBrain.getCharactorName(cardSerialID: "one")
        cardTwoName = calculatorBrain.getCharactorName(cardSerialID: "two")
        cardThreeName = calculatorBrain.getCharactorName(cardSerialID: "three")
        cardFourName = calculatorBrain.getCharactorName(cardSerialID: "four")
        cardFiveName = calculatorBrain.getCharactorName(cardSerialID: "five")
        updateResult()
    }
    
    @IBAction func drawFive(_ sender: UIButton) {
        sender.isEnabled = false
        calculatorBrain.calculateDrawFive()
        cardOneName = calculatorBrain.getCharactorName(cardSerialID: "one")
        cardTwoName = calculatorBrain.getCharactorName(cardSerialID: "two")
        cardThreeName = calculatorBrain.getCharactorName(cardSerialID: "three")
        cardFourName = calculatorBrain.getCharactorName(cardSerialID: "four")
        cardFiveName = calculatorBrain.getCharactorName(cardSerialID: "five")
        updateResult()
    }
    
    @IBOutlet weak var cardOne: UIImageView!
    @IBOutlet weak var cardTwo: UIImageView!
    @IBOutlet weak var cardThree: UIImageView!
    @IBOutlet weak var cardFour: UIImageView!
    @IBOutlet weak var cardFive: UIImageView!
    @IBOutlet weak var resultStatView: UITextView!
    @IBOutlet weak var drawOneButton: UIButton!
    @IBOutlet weak var drawFiveButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateResult()
        resultStatView.text = calculatorBrain.updateStat()
    }
    
    func updateResult() {
        resultStatView.text = calculatorBrain.updateStat()
        if cardOneName != "Hidden"{
            let cardOneImageName = cardOneName! + ".jpg"
//            print ("1:" + cardOneImageName)
            cardOne.image = UIImage(named: cardOneImageName)
            cardOne.isHidden = false
        } else {
            cardOne.isHidden = true
        }
        if cardTwoName != "Hidden"{
            let cardTwoImageName = cardTwoName! + ".jpg"
//            print ("2:" + cardTwoImageName)
            cardTwo.image = UIImage(named: cardTwoImageName)
            cardTwo.isHidden = false
        } else {
            cardTwo.isHidden = true
        }
        if cardThreeName != "Hidden"{
            let cardThreeImageName = cardThreeName! + ".jpg"
//            print ("3:" + cardThreeImageName)
            cardThree.image = UIImage(named: cardThreeImageName)
            cardThree.isHidden = false
        } else {
            cardThree.isHidden = true
        }
        if cardFourName != "Hidden"{
            let cardFourImageName = cardFourName! + ".jpg"
//            print ("4:" + cardFourImageName)
            cardFour.image = UIImage(named: cardFourImageName)
            cardFour.isHidden = false
        } else {
            cardFour.isHidden = true
        }
        if cardFiveName != "Hidden"{
            let cardFiveImageName = cardFiveName! + ".jpg"
//            print ("5:" + cardFiveImageName)
            cardFive.image = UIImage(named: cardFiveImageName)
            cardFive.isHidden = false
        } else {
            cardFive.isHidden = true
        }
        // Add flash effect
        cardOne.alpha = 0
        cardTwo.alpha = 0
        cardThree.alpha = 0
        cardFour.alpha = 0
        cardFive.alpha = 0
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            cardOne.alpha = 1.0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) { [self] in
            cardTwo.alpha = 1.0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) { [self] in
            cardThree.alpha = 1.0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) { [self] in
            cardFour.alpha = 1.0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [self] in
            cardFive.alpha = 1.0
            drawOneButton.isEnabled = true
            drawFiveButton.isEnabled = true
        }
        resultStatView.text = calculatorBrain.updateStat()
    }
}

