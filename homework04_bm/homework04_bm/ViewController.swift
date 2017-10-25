//
//  ViewController.swift
//  homework04_bm
//
//  Created by Bijay Maharjan on 10/23/17.
//  Copyright © 2017 com.Bijay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //listing the cities to use in the segment
    let cityArray = ["Barcelona", "NY", "Tokyo"]
    //listing details to use in the segment
    let detailArray = ["_CityView", "_MustSee", "_Food", "_Location"]
    //default image
    var currImageName = "Barcelona_CityView.jpg"
    

    
    @IBAction func cityAction(_ sender: Any) {
       //assigning the current image corresponding to both the arrays
            currImageName = "\(cityArray [citySegment.selectedSegmentIndex])\(detailArray [detailSegment.selectedSegmentIndex]).jpg"
        //assigning city label as city name from the city array
            cityLabel.text = cityArray [citySegment.selectedSegmentIndex]
        //assigning the current image to the image view
            imageView.image = UIImage(named: currImageName)
            
    }
    
    @IBOutlet weak var citySegment: UISegmentedControl!
    
    
    @IBAction func detailAction(_ sender: Any) {
        //returns the image with city name and detail that matches the selection out of the arrays
        currImageName = cityArray [citySegment.selectedSegmentIndex]+detailArray [detailSegment.selectedSegmentIndex]+".jpg"
        //assigning the corresponding current image
        imageView.image = UIImage(named: currImageName)

        
    }
    
    
    @IBOutlet weak var detailSegment: UISegmentedControl!
    
    
    @IBOutlet weak var cityLabel: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

