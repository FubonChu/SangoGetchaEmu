//
//  ViewController.swift
//  三國志戰略版抽卡模擬器
//
//  Created by Fubon Chu on 10/7/2021.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    private var interstitial: GADInterstitialAd?

    @IBAction func drawOnePressed(_ sender: UIButton) {
        if interstitial != nil {
            interstitial?.present(fromRootViewController: self)
        } else {
          print("Ad wasn't ready")
        }
        calculatorBrain.calculateDrawOne()
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    @IBAction func drawFivePressed(_ sender: UIButton) {
        if interstitial != nil {
            interstitial?.present(fromRootViewController: self)
        } else {
          print("Ad wasn't ready")
        }
        calculatorBrain.calculateDrawFive()
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    @IBAction func seasonSelect(_ sender: UIButton) {
        s1button.backgroundColor = UIColor(red: 218/255, green: 212/255, blue: 193/255, alpha: 1)
        s2button.backgroundColor = UIColor(red: 218/255, green: 212/255, blue: 193/255, alpha: 1)
        s3button.backgroundColor = UIColor(red: 218/255, green: 212/255, blue: 193/255, alpha: 1)
        s4button.backgroundColor = UIColor(red: 218/255, green: 212/255, blue: 193/255, alpha: 1)
        s5button.backgroundColor = UIColor(red: 218/255, green: 212/255, blue: 193/255, alpha: 1)
        s1button.isHighlighted = false
        s2button.isHighlighted = false
        s3button.isHighlighted = false
        s4button.isHighlighted = false
        s5button.isHighlighted = false
        sender.isHighlighted = true
        sender.backgroundColor = UIColor(red: 132/255, green: 212/255, blue: 193/255, alpha: 1)
        if sender.tag == 1 {
            calculatorBrain.seasonOnePool()
        } else if sender.tag == 2 {
            calculatorBrain.seasonTwoPool()
//            print(ShareData.shared.curCharPool)
        } else if sender.tag == 3 {
            calculatorBrain.seasonThreePool()
        } else if sender.tag == 4 {
            calculatorBrain.seasonFourPool()
        } else if sender.tag == 5 {
            calculatorBrain.seasonFivePool()
        }

    }
    
    @IBAction func resetStat(_ sender: UIButton) {
        resultTextView.text = calculatorBrain.resetStat()
    }
    
    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var s1button: UIButton!
    @IBOutlet weak var s2button: UIButton!
    @IBOutlet weak var s3button: UIButton!
    @IBOutlet weak var s4button: UIButton!
    @IBOutlet weak var s5button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultTextView.text = calculatorBrain.updateStat()
        s1button.backgroundColor = UIColor(red: 132/255, green: 212/255, blue: 193/255, alpha: 1)
        let request = GADRequest()
        // Real AdUnitID
        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-6381734354101903/4683510845",
        // Test AdUnitID
//        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-3940256099942544/4411468910",
                                        request: request,
                              completionHandler: { [self] ad, error in
                                if let error = error {
                                  print("Failed to load interstitial ad with error: \(error.localizedDescription)")
                                  return
                                }
                                interstitial = ad
                              }
            )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.cardOneName = calculatorBrain.getCharactorName(cardSerialID: "one")
            destinationVC.cardTwoName = calculatorBrain.getCharactorName(cardSerialID: "two")
            destinationVC.cardThreeName = calculatorBrain.getCharactorName(cardSerialID: "three")
            destinationVC.cardFourName = calculatorBrain.getCharactorName(cardSerialID: "four")
            destinationVC.cardFiveName = calculatorBrain.getCharactorName(cardSerialID: "five")
        }
    }
    
    private func createAD(){
        let request = GADRequest()
        // Real AdUnitID
        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-6381734354101903/4683510845",
        // Test AdUnitID
//        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-3940256099942544/4411468910",
                                        request: request,
                              completionHandler: { [self] ad, error in
                                if let error = error {
                                  print("Failed to load interstitial ad with error: \(error.localizedDescription)")
                                  return
                                }
                                interstitial = ad
                              }
            )
    }

}

