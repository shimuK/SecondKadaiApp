//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 志村　圭 on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextField!
    
    var inputStr:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func next(_ sender: Any) {
        if nameText.text! == "" {
            inputStr = "名無し"
        } else {
            inputStr = nameText.text!
        }
        nameText.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.name = inputStr
    }
    
    @IBAction func back(_ segue: UIStoryboardSegue) {
        // 戻るボタン押下時の処理
    }


}

