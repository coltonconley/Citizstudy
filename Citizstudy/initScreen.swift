//
//  initScreenViewController.swift
//  Citizstudy
///Users/jacob/Desktop/Hackathon/Citizstudy/
//  Created by Jacob on 4/16/16.
//  Copyright © 2016 Jacob. All rights reserved.
//

import UIKit

class initScreen: UIViewController {

    
    @IBOutlet weak var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view. 
        performSelector(Selector("showNavController"), withObject: nil, afterDelay: 3)
        
        self.logo.image = UIImage(named: "logo")
    }

    func showNavController()
    {
        performSegueWithIdentifier("initScreen", sender: self)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
