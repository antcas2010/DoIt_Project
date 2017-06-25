//
//  ViewDoItItemViewController.swift
//  DoIt
//
//  Created by ANTONIOS KASSANOS on 24/06/2017.
//  Copyright © 2017 ANTONIOS KASSANOS. All rights reserved.
//

import UIKit

class ViewDoItItemViewController: UIViewController {
    
    var mainListViewC = listItemsViewController()
    var doItTask = doItItem()

    @IBOutlet weak var DoItemName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DoItemName.text = doItTask.itemDescription
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CompletActionButton(_ sender: Any) {
        mainListViewC.myDoItItems.remove(at: mainListViewC.itemIndex)
        mainListViewC.listItemsTableView.reloadData()
        navigationController?.popViewController(animated: true)
        
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
