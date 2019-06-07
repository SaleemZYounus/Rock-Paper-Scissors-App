//
//  ViewController.swift
//  Rock, Paper, Scissors
//
//  Created by Saleem Younus (Student) on 3/19/19.
//  Copyright © 2019 Grayslake Central Highschool. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

var play : Bool!
    let shoot = [#imageLiteral(resourceName: "rock--left"),#imageLiteral(resourceName: "paper--left"),#imageLiteral(resourceName: "scissors--left")]
   
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var OppImage: UIImageView!
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBAction func howToPlay(_ sender: UIButton) {
        let svc = SFSafariViewController(url: url)
        present(svc, animated: true, completion: nil)
    }

    let url = URL(string: "https://youtube.com/c/supremepianist")!
  
    @IBAction func whenCamraButtonTapped(_ sender: UIButton) {if UIImagePickerController.isSourceTypeAvailable(.camera){
        imagePicker.sourceType = UIImagePickerControllerSourceType.camera
    }
    else{
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        }
        present(imagePicker, animated: true, completion: nil)
    }
    
    let imagePicker = UIImagePickerController ()
    
 var time = 3
 var timer = Timer()
    
    
    
   

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
       
       
    }
    
    
    @IBAction func timedStart(_ sender: UIButton) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    @objc func action(){
        time -= 1
        mainLabel.text = String("\(time) Sec.")
        if time == -1{
           mainLabel.text = "You Lose On Time"
            timer.invalidate()
            time = 4
        }
        
    }
            

    


    //if play == true { image.Image = shoot[randomNumber]
  
    
    @IBAction func rock(_ sender: UIButton) {
        image.image = #imageLiteral(resourceName: "rock--left")
        let shoots:Int = Int(arc4random_uniform(3))
         OppImage.image = shoot[shoots]
        if image.image == #imageLiteral(resourceName: "rock--left"){
            if OppImage.image == #imageLiteral(resourceName: "rock--left"){
                mainLabel.text = "Its a Tie"
            }
            
        }
        if image.image == #imageLiteral(resourceName: "rock--left"){
            if OppImage.image == #imageLiteral(resourceName: "paper--left"){
                mainLabel.text = "You Lose"
        }
    }
        if image.image == #imageLiteral(resourceName: "rock--left"){
            if OppImage.image == #imageLiteral(resourceName: "scissors--left"){
                mainLabel.text = "You Win"
        }
        
    }
    }
    @IBAction func paper(_ sender: UIButton) {
        image.image = #imageLiteral(resourceName: "paper--left")
        let shoots:Int = Int(arc4random_uniform(3))
        OppImage.image = shoot[shoots]
        
        if OppImage.image == #imageLiteral(resourceName: "paper--left"){
            mainLabel.text = "Its a Tie"
        }
        
    
    if image.image == #imageLiteral(resourceName: "paper--left"){
        if OppImage.image == #imageLiteral(resourceName: "scissors--left"){
            mainLabel.text = "You Lose"
    }
    }
    if image.image == #imageLiteral(resourceName: "paper--left"){
        if OppImage.image == #imageLiteral(resourceName: "rock--left"){
            mainLabel.text = "You Win"
        }
        
        }
        
    }
    @IBAction func scissors(_ sender: UIButton) {
        image.image = #imageLiteral(resourceName: "scissors--left")
        let shoots:Int = Int(arc4random_uniform(3))
        OppImage.image = shoot[shoots]
        
        if OppImage.image == #imageLiteral(resourceName: "scissors--left"){
            mainLabel.text = "Its a Tie"
        }
        
    
    if image.image == #imageLiteral(resourceName: "scissors--left"){
        if OppImage.image == #imageLiteral(resourceName: "rock--left"){
            mainLabel.text = "You Lose"
    }
    }
    if image.image == #imageLiteral(resourceName: "scissors--left"){
        if OppImage.image == #imageLiteral(resourceName: "paper--left"){
        mainLabel.text = "You Win"
            }
        }
    }
    
    
    


}
