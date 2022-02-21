//
//  ViewController6.swift
//  tableview
//
//  Created by AKASH JAIN on 20/02/22.
//

import UIKit

class ViewController6: UIViewController {

    
    @IBOutlet weak var namee: UITextField!
    
    @IBOutlet weak var ifsc: UITextField!
    @IBOutlet weak var phonee: UITextField!
    @IBOutlet weak var accnte: UITextField!
    @IBOutlet weak var emaile: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func btnadd(_ sender: UIButton) {
//        let dict = ["name":namee.text,"email":emaile.text,"accountno":accnte.text,"phoneno":phonee.text,"ifsccode":ifsc.text]
//        DatabaseHelper.shareInstance.save(object: dict as! [String:String])
        let detail : ViewController1 =
        self.storyboard?.instantiateViewController(withIdentifier: "ViewController1") as!
        ViewController1
        detail.arr1.append(phonee.text!)
        detail.arr2.append(namee.text!)
        detail.arr3.append(accnte.text!)
        detail.arr4.append(ifsc.text!)
        detail.arr5.append(emaile.text!)
//        arr1.remove(at : indexPath.row)
//   //            detail.arr2.remove(at : indexPath.row)
//   //            arr3.remove(at : indexPath.row)
//   //            arr4.remove(at : indexPath.row)
//   //            arr5.remove(at : indexPath.row)
        let ac = UIAlertController(title:nil, message:"Saved Succesfully", preferredStyle: .actionSheet)
        let done2Button = UIAlertAction(
            title: "Done", style:.default) { (action) in print("data entered") ;
                print("saved process done");
        }
        self.navigationController?.pushViewController(detail, animated: true)
        ac.addAction(done2Button)
        present(ac, animated: true, completion: nil)
    }
    
    @IBAction func backh(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
        
        
    }
    
    @IBAction func viewc(_ sender: UIButton) {
        let view = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        self.navigationController?.pushViewController(view, animated: true)
    }
    
}
