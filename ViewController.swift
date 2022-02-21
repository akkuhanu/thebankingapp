//
//  ViewController.swift
//  tableview
//
//  Created by AKASH JAIN on 17/02/22.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func TransactionHistory(_ sender: UIButton) {
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController5") as! ViewController5
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    @IBAction func v_1(_ sender: UIButton) {
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
        self.navigationController?.pushViewController(detailVC, animated: true)
   
    }
    
    @IBAction func v2(_ sender: UIButton) {
//        let Transac = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
//        self.navigationController?.pushViewController(Transac, animated: true)
    }
    
    @IBAction func v3(_ sender: UIButton) {
        let addm = self.storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        self.navigationController?.pushViewController(addm, animated: true)
        
    }
    
    @IBAction func Myprof(_ sender: UIButton) {
        let detail : ViewController4 =
        self.storyboard?.instantiateViewController(withIdentifier: "ViewController4") as!
        ViewController4
        detail.nam = "AKASH JAIN"
        detail.ccnt = "786839"
        detail.phon = "9654327372"
        detail.ifs = "HDFC3929"
        detail.emai = "coderbe@gmail.com"
        self.navigationController?.pushViewController(detail, animated: true)
        
    }
    
    @IBAction func addc(_ sender: UIButton) {
//
//        let addc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController6") as! ViewController6
//        self.navigationController?.pushViewController(addc, animated: true)
//
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
// view-0 : Home
// view-1 : View Customers
// view-2 : Transaction
// view-3 : view balance
// view-4 : To view the profile
// view-5 : Transaction History


