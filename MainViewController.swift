//
//  MainViewController.swift
//  ProjectTwo
//
//  Created by system on 2021/09/18.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var countLabelText: UILabel!
    var countNum: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func countUpPressed(_ sender: UIButton) {
        if countNum != 120 {
            countNum = countNum + 20
            countLabelText.text = "\(countNum) %"
        }
        
    }
    
    
    @IBAction func countDownPressed(_ sender: UIButton) {
        if countNum != 0 {
            countNum = countNum - 20
            countLabelText.text = "\(countNum) %"
        }
    }
    
    
    @IBAction func okPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toImageViewController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueのIDを確認して特定のsegueのときのみ動作させる
               if segue.identifier == "toImageViewController" {
                   // 2. 遷移先のViewControllerを取得
                   let next = segue.destination as? ImageViewController
                   // 3. １で用意した遷移先の変数に値を渡す
                   next?.countNum = self.countNum
               }
    }
}
