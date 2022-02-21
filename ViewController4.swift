//
//  ViewController4.swift
//  tableview
//
//  Created by AKASH JAIN on 17/02/22.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var ifsc: UILabel!
    @IBOutlet weak var accnt: UILabel!
    
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var navngn: UINavigationItem!
    var nam : String?
    var emai : String?
    var phon : String?
    var ccnt : String?
    var ifs : String?
    //var nav : String?
    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = nam
        email.text = emai
        phone.text = phon
        accnt.text = ccnt
        ifsc.text = ifs

        // Do any additional setup after loading the view.
    }
    


}
