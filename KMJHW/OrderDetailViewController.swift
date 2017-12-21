//
//  OrderDetailViewController.swift
//  KMJHW
//
//  Created by SWUCOMPUTER on 2017. 12. 22..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit
import CoreData

class OrderDetailViewController: UIViewController {

    @IBOutlet var textName: UITextField!
    @IBOutlet var textFood: UITextField!
    @IBOutlet var saveDate: UITextField!
    @IBOutlet var textMemo: UITextField!
   
    var detailOrder: NSManagedObject?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let order = detailOrder {
            textName.text = order.value(forKey: "name") as? String
            textFood.text = order.value(forKey: "food") as? String
            textMemo.text = order.value(forKey: "memo") as? String
            let dbDate: Date? = order.value(forKey: "date") as? Date
            let formatter: DateFormatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd h:mm a"
            if let unwrapDate = dbDate {
                let displayDate = formatter.string(from: unwrapDate as Date)
                saveDate.text = displayDate
            } }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
