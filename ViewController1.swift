//
//  ViewController1.swift
//  tableview
//
//  Created by AKASH JAIN on 17/02/22.
//

import UIKit

class ViewController1: UIViewController,UITableViewDelegate ,
                       UITableViewDataSource {
    @IBOutlet weak var tablecust: UITableView!
//    var customer = [Customer]()
    var arr1 = ["9999898980","7878788990","8787877687","7879787970","8786878687","9090908979","8907980896"
                    ,"8979677889","8756425190","8978990971"
    ]
    var arr2 = ["Ajay Garg","Yash Raj","Nishant Babbar","Love Chahar","Harman Sharma","Ishan Singh","Luv Kushwaha"
                ,"Kunal Kumar","Utkarsh Arora","Kartik Gupta"
    ]
    var arr3 = ["998989","787889","878776","797879","868786","909089","079808"
                     ,"796778","564251","789909"
     ]
    var arr4 = ["HDFC8989","HDFC7889","HDFC8776","HDFC7879","HDFC8786","HDFC9089","HDFC9808"
                     ,"HDFC6778","HDFC4251","HDFC9909"
     ]
    var arr5 = ["Ajay@gmail.com","Yash@gmail.com","Nishant@gmail.com","Love@gmail.com","Harman@gmail.com","Ishan@gmail.com","Luv@gmail.com"
                ,"Kunal@gmail.com","Utkarsh@gmail.com","Kartik@gmail.com"
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return customer.count
        return arr1.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell=tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.name?.text = arr2[indexPath.row]
        cell.ccnt?.text = arr3[indexPath.row]
//        cell.name?.text = customer[indexPath.row].ifsccode
//       cell.ccnt?.text = customer[indexPath.row].accountno
        return cell
    }
//
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //self.view.backgroundColor = UIColor.blue
        // on click change the background color but
        // since table occupies whole screen
        let detail : ViewController4 =
        self.storyboard?.instantiateViewController(withIdentifier: "ViewController4") as!
        ViewController4
                detail.nam = arr2[indexPath.row]
                detail.ccnt = arr3[indexPath.row]
                detail.phon = arr1[indexPath.row]
                detail.ifs = arr4[indexPath.row]
                detail.emai = arr5[indexPath.row]
        
//        detail.nam = customer[indexPath.row].name
//        detail.ccnt = customer[indexPath.row].accountno
//        detail.phon = customer[indexPath.row].phoneno
//        detail.ifs = customer[indexPath.row].ifsccode
//        detail.emai = customer[indexPath.row].email
        self.navigationController?.pushViewController(detail, animated: true)

    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            arr1.remove(at : indexPath.row)
            arr2.remove(at : indexPath.row)
            arr3.remove(at : indexPath.row)
            arr4.remove(at : indexPath.row)
            arr5.remove(at : indexPath.row)
            // now what type of animation you want on deleting
            tablecust.deleteRows(at: [indexPath], with: .fade)
            }

    }
    
    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        customer = DatabaseHelper.shareInstance.getCustomerData()

        // Do any additional setup after loading the view.
    }
    


}
