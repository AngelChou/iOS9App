//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Penguin on 2016/10/8.
//  Copyright © 2016年 Angel Chou. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet var backgroundImageView:UIImageView!
    @IBOutlet var ratingStackView:UIStackView!
    @IBOutlet var dislikeButton:UIButton!
    @IBOutlet var goodButton:UIButton!
    @IBOutlet var greatButton:UIButton!
    
    var rating:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
//        ratingStackView.transform = CGAffineTransformMakeScale(0.0, 0.0)
        //ratingStackView.transform = CGAffineTransformMakeTranslation(0, 500)
//        let scale = CGAffineTransformMakeScale(0.0, 0.0)
//        let translate = CGAffineTransformMakeTranslation(0, 500)
//        ratingStackView.transform = CGAffineTransformConcat(scale, translate)
//        dislikeButton.transform = CGAffineTransformMakeScale(0.0, 0.0)
//        goodButton.transform = CGAffineTransformMakeScale(0.0, 0.0)
//        greatButton.transform = CGAffineTransformMakeScale(0.0, 0.0)
        dislikeButton.transform = CGAffineTransformMakeTranslation(0, 500)
        goodButton.transform = CGAffineTransformMakeTranslation(0, 500)
        greatButton.transform = CGAffineTransformMakeTranslation(0, 500)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
//        UIView.animateWithDuration(0.4, delay: 0.0, options: [], animations: {
//            self.ratingStackView.transform = CGAffineTransformIdentity
//            }, completion: nil)
//        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [], animations: { 
//            self.ratingStackView.transform = CGAffineTransformIdentity
//            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0.0, options: [], animations: {
            self.dislikeButton.transform = CGAffineTransformIdentity
            }, completion: nil)
        UIView.animateWithDuration(0.8, delay: 0.0, options: [], animations: {
            self.goodButton.transform = CGAffineTransformIdentity
            }, completion: nil)
        UIView.animateWithDuration(1.2, delay: 0.0, options: [], animations: {
            self.greatButton.transform = CGAffineTransformIdentity
            }, completion: nil)
    }
    
    @IBAction func ratingSelected(sender: UIButton){
        switch (sender.tag) {
        case 100: rating = "dislike"
        case 200: rating = "good"
        case 300: rating = "great"
        default: break
        }
        performSegueWithIdentifier("unwindToDetailView", sender: sender)
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
