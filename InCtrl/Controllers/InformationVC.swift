//
//  InformationVC.swift
//  InCtrl
//
//  Created by Eduardo Martinez on 05/05/18.
//  Copyright © 2018 Eduardo Martinez. All rights reserved.
//

import UIKit

class InformationVC: UIViewController {

    @IBOutlet weak var tvInformation: UITableView!
    
    var titles = ["Historia","Mision","Vision","Valores"]
    var info = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum rutrum nec neque vitae sodales. Praesent rhoncus justo in suscipit molestie. Donec sed lectus congue, gravida tellus id, elementum ligula.",
                "Cras lectus ante, ultrices non nibh sit amet, imperdiet aliquet arcu.",
                "Integer ligula lectus, bibendum consequat tempor et, placerat ac odio. Etiam consequat dignissim erat. Duis tempor, risus vitae vulputate porttitor, lorem arcu pellentesque lectus, vel sodales nisl enim at dui.",
                "Aliquam finibus vehicula sodales. Aenean at magna iaculis, porta risus id, dapibus eros."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvInformation.rowHeight = UITableViewAutomaticDimension
        tvInformation.estimatedRowHeight = 140
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

extension InformationVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "InformationTVC", for: indexPath) as!  InformationTVC
        cell.lblTitle.text = titles[indexPath.row]
        cell.lblInfo.text = info[indexPath.row]
        return cell
        
    }
    
    
    
}

