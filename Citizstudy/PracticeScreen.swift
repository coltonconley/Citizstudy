//
//  PracticeScreen.swift
//  Citizstudy
//
//  Created by Jacob on 4/16/16.
//  Copyright © 2016 Jacob. All rights reserved.
//

import UIKit

class PracticeScreen: UIViewController {

    @IBOutlet weak var BackButtonPracticeScreen: UIButton!
    
    @IBOutlet weak var TextFieldPracticeScreen: UITextField!
    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBAction func NextQuestionButtonTapped(sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
