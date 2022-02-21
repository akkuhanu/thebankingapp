//
//  ViewController2.swift
//  tableview
//
//  Created by AKASH JAIN on 17/02/22.
//

import UIKit

class ViewController2: UIViewController {
    
    
    @IBOutlet weak var accountno: UITextField!
    @IBOutlet weak var datee: UITextField!
    
    @IBOutlet weak var amount: UITextField!

    
    @IBAction func confirm(_ sender: UIButton) {
        let detail : ViewController5 =
        self.storyboard?.instantiateViewController(withIdentifier: "ViewController5") as! ViewController5
        let detail1 : ViewController3 =
        self.storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
//        detail.arr1.append(accountno.text!)
//        detail.arr2.append(datee.text!)
//        detail.arr3.append(amount.text!)
        let dict = ["to":accountno.text,"amount":amount.text,"date":datee.text]
        Datahelper.shareInstance.save(object: dict as! [String:String])
        self.navigationController?.pushViewController(detail1, animated: false)
//        let detail1 : ViewController3 =
//        self.storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        detail1.bal = -Int(amount.text!)! + detail1.bal
//        self.navigationController?.pushViewController(detail1, animated: false)
        
        let act = UIAlertController(title:nil, message:"Money Transferred Sucessfully", preferredStyle: .alert)
        let done2Button = UIAlertAction(
            title: "Done", style:.default) { (action) in print("Money transferred")
                
        }
        act.addAction(done2Button)
        present(act, animated: true, completion: nil)
        }
        
    
    @IBAction func viewlist(_ sender: UIButton) {
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
         self.navigationController?.pushViewController(detailVC,animated: true)
        
        
    }
    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
