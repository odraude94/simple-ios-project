//
//  SplashVC.swift
//  InCtrl
//
//  Created by Eduardo Martinez on 05/05/18.
//  Copyright © 2018 Eduardo Martinez. All rights reserved.
//

import UIKit

class SplashVC: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(nextViewController), userInfo: nil, repeats: false)
        // Do any additional setup after loading the view.
    }
    
    @objc func nextViewController(){
        self.performSegue(withIdentifier: "HomeVC", sender: nil)
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
