//
//  ViewController5.swift
//  tableview
//
//  Created by AKASH JAIN on 17/02/22.
//
// FOR TRANSACTION HISTORY


import UIKit

class ViewController5: UIViewController,UITableViewDelegate ,
                       UITableViewDataSource {
      var some = [Some]()
//    var arr1 = ["38927489","48284567","24345633"]
//    // arr1 --> accnt no
//    var arr2 = ["23/12/2021","23/01/2022","12/02/2022"]
//    //arr2--> date
//    var arr3 = ["$ 2345","$ 3355","$ 5673"]
    // amount
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return arr1.count // kitne row chaiye
        return some.count
    }
    // if no of section is return 0
    // then nothing is print
    // if return 1 --> print all data once
    // if return 2 --> print all data twice
    // (no of section),(no of rows),(cell for rows at ) are metods in table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1:TableViewCell1=tableView.dequeueReusableCell(withIdentifier: "cell1") as! TableViewCell1
         cell1.to?.text = some[indexPath.row].tos
         cell1.date?.text = some[indexPath.row].dates
         cell1.amt?.text = some[indexPath.row].amounts
        return cell1
    }
    
    
    
    
    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        some = Datahelper.shareInstance.getSomeData()
    }
    


}
