//
//  ViewController.swift
//  pelot
//
//  Created by tamurine on 2014/11/10.
//  Copyright (c) 2014年 toyama satoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var pickerController:UIImagePickerController = UIImagePickerController()
    
    var recipes = ["ビビンバ","お弁当","バナナケーキ"]

    @IBOutlet weak var recipeTableView: UITableView!
    var kCellIdentifer = "RecipeTableViewCell"
    
    @IBAction func addRecipeButtonTapped(sender: UIButton) {
        pickerController.delegate = self
        pickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        pickerController.allowsEditing = true
        self.presentViewController(pickerController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.recipeTableView.dequeueReusableCellWithIdentifier(self.kCellIdentifer, forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = self.recipes[indexPath.row]
        return cell
    }
    

}

