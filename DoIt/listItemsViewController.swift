//
//  listItemsViewController.swift
//  DoIt
//
//  Created by ANTONIOS KASSANOS on 22/06/2017.
//  Copyright © 2017 ANTONIOS KASSANOS. All rights reserved.
//

import UIKit

class listItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var myDoItItems : [doItItem] = []
    var itemIndex = 0

    
    @IBOutlet weak var listItemsTableView: UITableView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        listItemsTableView.dataSource = self
        listItemsTableView.delegate = self
        
        myDoItItems = createDoItItmes()
        
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myDoItItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let myItem = myDoItItems[indexPath.row]
        
        
        if (myItem.importantItem) {
        cell.textLabel?.text = "❗️ \(myItem.itemDescription)"
        } else
        {
            cell.textLabel?.text = myItem.itemDescription
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        itemIndex = indexPath.row
        let task = myDoItItems[indexPath.row]
        performSegue(withIdentifier: "detailDoItItemShow", sender: task)
        
    }

        func createDoItItmes() -> [doItItem]
    {
     let myNewItem1 = doItItem()
        
        myNewItem1.itemDescription = "Go Shopping"
        myNewItem1.importantItem = true
        
    let myNewItem2 = doItItem()
        myNewItem2.itemDescription = "Go for Running"
        myNewItem2.importantItem = false

        let myNewItem3 = doItItem()
        myNewItem3.itemDescription = "Go for food"
        myNewItem3.importantItem = false

        return [myNewItem1, myNewItem2, myNewItem3]
    
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "addNewItem") {
            let doItItemScreen = segue.destination as!  DoItItemViewController
            doItItemScreen.mainListViewC = self
        }
        
        if (segue.identifier == "detailDoItItemShow") {
            let viewDoItItemScreen = segue.destination as!  ViewDoItItemViewController
            viewDoItItemScreen.doItTask = sender as! doItItem
            viewDoItItemScreen.mainListViewC =  self
        }
    }

}

