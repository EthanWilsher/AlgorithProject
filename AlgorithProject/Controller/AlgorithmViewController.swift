//
//  AlgorithmViewController.swift
//  AlgorithProject
//
//  Created by Wilsher, Ethan on 11/8/17.
//  Copyright © 2017 Wilsher, Ethan. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{
    //Mark: Data members
    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        //TODO: Define algorithm and all steps
        let algorithm :String = " These are the instructions to create a Java project using Eclipse and Github \n"
        let stepOne :String = "First, you must download and install Eclipse "
        let stepTwo :String = "Then, open ecse and make a new java project named what you want."
        let stepThree :String = "Then you must create 4 packages"
        let stepFour :String = "Name them ___.model, ____.view, ____.controller, and ____.tests."
        let stepFive :String = "Then put a runner and a controller class into the controller package."
        let stepSix :String = "Then put a class that displays your running code in your view package."
        let stepSeven :String = "Then put a class with a name of your object in the model package."
        let stepEight :String = "Then you must go online and download the files for you tests package."
        let stepNine :String = "Then insert these test files into the test package."
        let stepTen :String = "Lastly, search the internet for information on how to code the project you want to."
        
        //TODO: finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven, stepEight, stepNine, stepTen]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "$"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep: NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range:
            NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
        
        
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
        
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()
        // Do any additional setup after loading the view.
    }
    
    override public func didReceiveMemoryWarning()
    {
      super.didReceiveMemoryWarning()
    }
}
