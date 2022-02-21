//
//  ViewController3.swift
//  tableview
//
//  Created by AKASH JAIN on 17/02/22.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var balance: UILabel!
    var bal : Int = 1000
    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
   
    
    @IBAction func transach(_ sender: UIButton) {
            let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController5") as! ViewController5
            self.navigationController?.pushViewController(detailVC, animated: true)
            
    }
    
    @IBAction func addm(_ sender: UIButton) {
        let act = UIAlertController(title:nil, message:"ADD MONEY", preferredStyle: .alert)
        // if i made .actionsheet above then it will be pop up from down
        // if .alert then in middle of screen it appears
        act.addTextField { field in
            field.placeholder = "ENTER THE AMOUNT";
            //var c = field
        }
        guard let fields = act.textFields , fields.count == 1
        else{
            return
        }
        let fieldbal = fields[0]
        let ac = UIAlertController(title:nil, message:"MONEY ADDED SUCESSFULLY", preferredStyle: .actionSheet)
        let canButton = UIAlertAction(
            title: "Cancel", style:.default) { (action) in print("NOT WANT TO ENTER")}
        let doneButton = UIAlertAction(
            title: "Done", style:.default) { (action) in print("data entered") ;
                self.present(ac, animated: true, completion: nil)
            }
        let done2Button = UIAlertAction(
            title: "Done", style:.default) { (action) in print("data entered") ;
                print(" process done");
                self.balance.text = self.updateAmount(c:Int(fieldbal.text!)!)
        }
        ac.addAction(done2Button)
        //action.addAction(ac)
        act.addAction(canButton)
        act.addAction(doneButton)
        present(act, animated: true, completion: nil)
  
      
    }
    func updateAmount(c : Int) -> String?{
        let amount = Int(bal) + c
        return  String(amount)
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        balance.text = String(bal)
    }


}
