//
//  FlashCardScreen.swift
//  Citizstudy
//
//  Created by Jacob on 4/16/16.
//  Copyright © 2016 Jacob. All rights reserved.
//

import UIKit
import SwiftyJSON


class FlashCardScreen: UIViewController {
    
    @IBOutlet weak var BackButtonFlashCardScreen: UIButton!

    
    @IBOutlet weak var FlashCardButton: UIButton!
    var myArray: [CivicsQuestion] = []
    var index = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        myArray = makeCivicsQuestions()
        // Do any additional setup after loading the view.
        FlashCardButton.setTitle(myArray[index].getQuestion(), forState: .Normal)
        
        /* Jason's code
        let bundle = NSBundle.mainBundle()
        let path = bundle.pathForResource("Questions", ofType: "json")
        let content = NSData.dataWithContentsOfMappedFile(path!) as! NSData
        do {
            let json = try NSJSONSerialization.JSONObjectWithData(content, options: .AllowFragments)
        } catch {
            print("error serializing JSON: \(error)")
 */
    }

    func makeCivicsQuestions() -> [CivicsQuestion] {
        
        var questionsArray = [CivicsQuestion]()
        
        questionsArray.append(CivicsQuestion(newQuestion: "What is the supreme law of the land? ", newAnswers: ["The Constitution"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What does the Constitution do? ", newAnswers: ["sets up the government", "defines the government", "protects basic rights of Americans"]))
        questionsArray.append(CivicsQuestion(newQuestion: "The idea of self-government is in the first three words of the Constitution. What are these words? ", newAnswers: ["We the People"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What is an amendment? ", newAnswers: ["a change to the Constitution", "an addition to the Constitution"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What do we call the first ten amendments to the Constitution? ", newAnswers: ["the Bill of Rights"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What is one right or freedom from the First Amendment?", newAnswers: ["speech", "religion","assembly","press","petition the government"]))
        questionsArray.append(CivicsQuestion(newQuestion: "How many amendments does the Constitution have? (please type numeric answer)", newAnswers: ["27", "twenty-seven"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What did the Declaration of Independence do?", newAnswers: ["announced our independence (from Great Britain)"," declared our independence (from Great Britain)", "said that the United States is free (from Great Britain)"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What are two rights in the Declaration of Independence?", newAnswers: ["life","liberty","pursuit of happiness"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What is freedom of religion?", newAnswers: ["You can practice any religion", "or not practice a religion"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What is the economic system in the United States?", newAnswers: ["capitalist economy", "market economy"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What is the rule of law?", newAnswers: ["Everyone must follow the law","Leaders must obey the law","Government must obey the law", "No one is above the law"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Name one branch or part of the government.", newAnswers: ["Congress","legislative","President","executive","the courts","judicial"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What stops one branch of government from becoming too powerful? ", newAnswers: ["checks and balances","separation of power"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Who is in charge of the executive branch? ", newAnswers: ["the President"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Who makes federal laws? ", newAnswers: ["Congress","Senate and House (of Representatives)","(U.S. or national) legislature"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What are the two parts of the US Congress?", newAnswers: ["the Senate and House ","the Senate and House of Representative"]))
        questionsArray.append(CivicsQuestion(newQuestion: "How many U.S. Senators are there?", newAnswers: ["one hundred", "100"]))
        questionsArray.append(CivicsQuestion(newQuestion: "We elect a U.S. Senator for how many years?", newAnswers: ["six","6"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Who is one of your states U.S. Senators now?", newAnswers: ["!!!!!!!!!!!!!!!!!!!!"]))
        questionsArray.append(CivicsQuestion(newQuestion: "The House of Representatives has how many voting members?", newAnswers: ["four hundred thirty-five","435"]))
        questionsArray.append(CivicsQuestion(newQuestion: "We elect a U.S. Representative for how many years? ", newAnswers: ["two", "2"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Name your U.S. Representative.", newAnswers: ["!!!!!!!!!!!!!!!!!!!!"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Who does a U.S. Senator represent?", newAnswers: ["all people of the state"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Why do some states have more Representatives than other states?", newAnswers: ["the state's population","they have more people","some states have more people","because of the state's population","because they have more people", "because some states have more people"]))
        questionsArray.append(CivicsQuestion(newQuestion: "We elect a President for how many years? ", newAnswers: ["4"]))
        questionsArray.append(CivicsQuestion(newQuestion: "In what month do we vote for President?", newAnswers: ["November"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What is the name of the President of the United States now?", newAnswers: ["Barack Obama", "Obama"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What is the name of the Vice President of the United States now?", newAnswers: ["Joe Biden"]))
        questionsArray.append(CivicsQuestion(newQuestion: "If the President can no longer serve, who becomes President?", newAnswers: ["the vice president", "the VP"]))
        questionsArray.append(CivicsQuestion(newQuestion: "If both the President and the Vice President can no longer serve, who becomes President?", newAnswers: ["the Speaker of the House"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Who is Commander in Chief of the military?", newAnswers: ["the President"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Who signs bills to become laws?", newAnswers: ["the President"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Who vetoes bills?", newAnswers: ["the President"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What does the President's cabinet do?", newAnswers: ["advises the President"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What are 2 cabinet level positions?", newAnswers: ["Secretary of  Agriculture","Secretary of Commerce","Secretary of Defense","Secretary of Education","Secretary of Energy","Secretary of Health and Human Services","Secretary of Homeland Security","Secretary of Housing and Urban Development","Secretary of the Interior","Secretary of Labor","Secretary of State","Secretary of Transportation","Secretary of the Treasury","Secretary of Veterans Affairs","Attorney General", "Vice President"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What does the judicial branch do?", newAnswers: ["reviews laws","explains laws","resolves disputes", "decides if law goes against the Constitution"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What is the highest court in the United States?", newAnswers: ["the Supreme Court", "Supreme Court"]))
        questionsArray.append(CivicsQuestion(newQuestion: "How many justices are on the Supreme Court?", newAnswers: ["nine", "9"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Who is the Chief Justice of the United States now?", newAnswers: ["John G. Roberts Jr.", "John Roberts"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Under our Constitution, some powers belong to the federal government. What is one power of the federal government?", newAnswers: ["to print money","to declare war","to create an army", "to make treaties"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Under our Constitution, some powers belong to the states. What is one power of the states?", newAnswers: ["provide schooling and education","provide protection","provide safety","give a driver's license", "approving zone and land use"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What are the two major political parties in the United States?", newAnswers: ["Democratic and Republican"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What is the political party of the President now?", newAnswers: ["Democratic"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What is the name of the Speaker of the House of Representatives now?", newAnswers: ["Paul Ryan"]))
        questionsArray.append(CivicsQuestion(newQuestion: "There are four amendments to the Constitution about who can vote. Describe one of them.", newAnswers: ["Citizens 18 and older can vote","No poll tax to vote","Any citizen can vote","A male citizen of any race can vote"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What is one responsibility that is only for United States citizens?", newAnswers: ["serve on a jury", "vote in a federal election"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Name one right only for United States citizens.", newAnswers: ["vote in national election", "run for federal office"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What are 2 rights of everyone living in the United States?", newAnswers: ["freedom of expression","freedom of speech","freedom of assembly","freedom to petition the government","freedom of religion", "the right to bear arms"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What do we show loyalty to when we say the Pledge of Allegiance?", newAnswers: ["the USA","the United States","the flag","the United States of America"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What is 1 promise you make when you become a United States citizen?", newAnswers: ["give up loyalty to other countries","defend the Constitution and laws of the United States","obey the laws of the United States","serve in the U.S. military (if needed)","serve (do important work for) the nation (if needed)","be loyal to the United States"]))
        questionsArray.append(CivicsQuestion(newQuestion: "How old do citizens have to be to vote for President?", newAnswers: ["18 and older","eighteen and older","18", "eighteen"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What are 2 ways that Americans can participate in their democracy?", newAnswers: ["vote","join a political party","help with a campaign","join a civic group","join a community group","give an elected official your opinion on an issue","call Senates & Representatives","publicly support or oppose an issue or policy","run for office","write to a newspaper"]))
        questionsArray.append(CivicsQuestion(newQuestion: "When is the last day you can send in federal income tax forms?", newAnswers: ["April 15"]))
        questionsArray.append(CivicsQuestion(newQuestion: "When must all men register for the Selective Service?", newAnswers: ["18 years old","eighteen years old", "between 18 and 26"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What is 1 reason colonists came to America?", newAnswers: ["freedom","political liberty","religious freedom","economic opprotunity","practice their religion", "escape persecution"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Who lived in America before the Europeans arrived? ", newAnswers: ["American Indians", "Native Americans"]))
        questionsArray.append(CivicsQuestion(newQuestion: "What group of people was taken to America and sold as slaves?", newAnswers: ["Africans", "people from Africa"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Why did the colonists fight the British?", newAnswers: ["high taxes","British army stayed in their houses", "they didn't have self-government"]))
        questionsArray.append(CivicsQuestion(newQuestion: "Who wrote the Declaration of Independence?", newAnswers: ["Thomas Jefferson"]))
        
        return questionsArray
    }
    
    @IBAction func NextTapped(sender: AnyObject) {

        }
        
        
    
        
    //    let dictionary = SwiftJs
    
 
    @IBAction func FlipButtonTapped(sender: UIButton) {
        FlashCardButton.setTitle(myArray[index].getAnswers(), forState: .Normal)

    }

    @IBAction func NextButtonTapped(sender: AnyObject) {
        if index < myArray.count - 1
        {
           index += 1
        }else{
            index = 0
        }
        FlashCardButton.setTitle(myArray[index].getQuestion(), forState: .Normal)
    }
    
    @IBAction func PreviousButtonTapped(sender: UIButton) {
        if index > 0
        {
            index -= 1
        }else{
            index = myArray.count - 1
        }
        FlashCardButton.setTitle(myArray[index].getQuestion(), forState: .Normal)
        
    }
    @IBAction func CardTapped(sender: UIButton) {
        FlashCardButton.setTitle(myArray[index].getAnswers(), forState: .Normal)
    }
    @IBAction func ShuffleTapped(sender: UIButton) {
            shuffle()
        FlashCardButton.setTitle(myArray[index].getQuestion(), forState: .Normal)
    }
    
    func shuffle () // Places cards in random order.
    {
        var newArray: [CivicsQuestion] = []
        
        while(myArray.count > 0)
        {
            var size: UInt32 = UInt32(myArray.count)
            var num: Int = Int(arc4random_uniform(size))
            newArray.append(myArray.removeAtIndex(num))
        }
        myArray = newArray
    }
    
}





    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


