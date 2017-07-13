//
//  ColorsViewController.swift
//  Colors
//
//  Created by LiuXiao on 7/13/17.
//  Copyright © 2017 XiaoLiu. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var colorsTableView: UITableView!
    
    var colors = ["red","orange","yellow","green","blue","purple","brown"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorsTableView.delegate = self
        colorsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]
        
        //int frequency = indexPath.row %10;
        switch (indexPath.row) {
        case 0:
            cell.backgroundColor = UIColor.red
            break;
        case 1:
            cell.backgroundColor = UIColor.orange
            break;
        case 2:
            cell.backgroundColor = UIColor.yellow
            break;
        case 3:
            cell.backgroundColor = UIColor.green
            break;
        case 4:
            cell.backgroundColor = UIColor.blue
            break;
        case 5:
            cell.backgroundColor = UIColor.purple
            break;
        case 6:
            cell.backgroundColor = UIColor.brown
            break;
            
        //up to case 9
        default:
            break;
        }
        
        return cell
        
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
