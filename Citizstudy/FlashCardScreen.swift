//
//  FlashCardScreen.swift
//  Citizstudy
//
//  Created by Jacob on 4/16/16.
//  Copyright © 2016 Jacob. All rights reserved.
//

import UIKit

class FlashCardScreen: UIViewController {
    
    @IBOutlet weak var BackButtonFlashCardScreen: UIButton!

    @IBOutlet weak var ShuffleButtonFlashCardScreen: UIButton!
    
    @IBOutlet weak var PreviousButtonFlashCardScreen: UIButton!
    
    @IBOutlet weak var FlipButtonFlashCardScreen: UIButton!
    
    @IBOutlet weak var NextbuttonFlashCardScreen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func NextTapped(sender: AnyObject) {
        
        
        
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
