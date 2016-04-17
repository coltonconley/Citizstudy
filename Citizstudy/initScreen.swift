//
//  initScreenViewController.swift
//  Citizstudy
///Users/jacob/Desktop/Hackathon/Citizstudy/
//  Created by Jacob on 4/16/16.
//  Copyright © 2016 Jacob. All rights reserved.
//

import UIKit
import AVFoundation

class initScreen: UIViewController, AVAudioPlayerDelegate {

    
    @IBOutlet weak var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view. 
        performSelector(Selector("showNavController"), withObject: nil, afterDelay: 3)
        
        self.logo.image = UIImage(named: "logo")
       
        
        
        
//        var player : AVAudioPlayer! = nil
//        //let path = NSBundle.mainBundle().pathForResource(myDict!["Hello"] as! String?, ofType:"mp3")
//        let path = "Scheinman_CultComp2014.mp3"
//        let fileURL = NSURL(fileURLWithPath: path)
//        
//        do {
//            player = try AVAudioPlayer(contentsOfURL: fileURL)
//
//        }
//        catch{
//            player = nil
//        }
//        player.prepareToPlay()
//        player.play()
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
