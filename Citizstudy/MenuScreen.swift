//
//  MenuScreen.swift
//  Citizstudy
//
//  Created by Jacob on 4/16/16.
//  Copyright © 2016 Jacob. All rights reserved.
//

import UIKit
import AVFoundation


class MenuScreen: UIViewController, AVAudioPlayerDelegate {

    @IBOutlet weak var menuLabel: UILabel!
    
    @IBOutlet weak var flashCardMenuButton: UIButton!
    
    @IBOutlet weak var practiceMenuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myDict: NSDictionary?
        if let path = NSBundle.mainBundle().pathForResource("AudioInfo", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
        }
        
        print(myDict!["Hello"])
        
        var audioPlayer = AVAudioPlayer()
        
        let soundURL: NSURL = NSBundle.mainBundle().URLForResource(myDict!["Hello"] as! String?, withExtension: "mp3")!
        audioPlayer = try! AVAudioPlayer(contentsOfURL: soundURL)
        audioPlayer.delegate = self
        audioPlayer.play()

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
