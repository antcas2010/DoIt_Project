//
//  DoItItemViewController.swift
//  DoIt
//
//  Created by ANTONIOS KASSANOS on 24/06/2017.
//  Copyright © 2017 ANTONIOS KASSANOS. All rights reserved.
//

import UIKit

class DoItItemViewController: UIViewController {
    
    var mainListViewC = listItemsViewController()
    
    @IBOutlet weak var itemTextInput: UITextField!
    
    @IBOutlet weak var importantItem: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createDoItItemAction(_ sender: Any) {
        let newDoItItem = doItItem()
        newDoItItem.itemDescription = itemTextInput.text!
        newDoItItem.importantItem = importantItem.isOn
        mainListViewC.myDoItItems.append(newDoItItem)
        mainListViewC.listItemsTableView.reloadData()
navigationController?.popViewController(animated: true)
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
