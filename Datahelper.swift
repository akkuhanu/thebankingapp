//
//  Datahelper.swift
//  tableview
//
//  Created by AKASH JAIN on 21/02/22.
//

import Foundation
import CoreData
import UIKit
class Datahelper{
    static var shareInstance = Datahelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    func save(object:[String:String]){
        let some = NSEntityDescription.insertNewObject(forEntityName: "Some", into: context!) as! Some
        some.tos = object["to"]
        some.dates = object["date"]
        some.amounts = object["amount"]
//        customer.accountno = object["accountno"]
//        customer.ifsccode = object["ifsccode"]
        
        do{
            try context?.save()
        }catch{
            print("data is not save")
        }
    }
    func getSomeData() -> [Some]{
        var some = [Some]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName : "Some")
        do{
            some = try context?.fetch(fetchRequest) as! [Some]
        }catch{
            print("can not get data")
        }
        return some
    }

}

