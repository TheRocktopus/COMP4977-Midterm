//
//  ViewController.swift
//  COMP4977_Midterm_v2
//
//  Created by Matthew Banman on 2015-02-24.
//  Copyright (c) 2015 Matthew Banman. All rights reserved.
//

import UIKit

class DogPhotoController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate
{
    // photos and captions
    let photoCaps: [String] = ["Good Tunes", "Red Ball", "Specs", "Smilin'", "Ruff Day", "Good Tunes",
        "Red Ball", "Specs", "Smilin'", "Ruff Day"]
    let photos: [String] = ["Dog1.jpg", "Dog2.jpg", "Dog3.jpg", "Dog4.jpg", "Dog5.jpg", "Dog1.jpg",
        "Dog2.jpg", "Dog3.jpg", "Dog4.jpg", "Dog5.jpg"]
    
    // margins between custom cells
    let cellMargins = UIEdgeInsets(top: 20.0, left: 20.0, bottom: 20.0, right: 20.0)
    
    // photoCell - reusableIdentifier to select the cell template
    let templateCell: String = "photoCell"

    // Initial UIViewController functions
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Customized UCollectionViewDataSource and UICollectionViewDelegate functions follow
    
    // return the number of photos to be displayed
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return photos.count
    }
    
    // set image and text data for a single cell based on index
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath)
        -> UICollectionViewCell
    {
        // select template cell with its reuseIdentifier
        let cell: PhotoViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(templateCell, forIndexPath: indexPath) as PhotoViewCell
        cell.caption.text = photoCaps[indexPath.row]
        cell.image.image = UIImage(named: photos[indexPath.row])
        
        return cell
    }
    
    // set margins to nicely separate the cells on the page
    func collectionView(collectionView: UICollectionView!, layout collectionViewLayout: UICollectionViewLayout!,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets
    {
        return cellMargins
    }
    
    // print the selected cell's caption to the console
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println("\(photoCaps[indexPath.row]) selected")
    }

    


}

