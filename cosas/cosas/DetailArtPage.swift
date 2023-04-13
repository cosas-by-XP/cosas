//
//  DetailArtPage.swift
//  cosas
//
//  Created by Ximena Puig
//

import UIKit

class DetailArtPage: UIViewController {


    @IBOutlet weak var movieImageView: UIImageView!
        
    @IBOutlet weak var titleLabel: UILabel!


    @IBOutlet weak var captionLabel: UILabel!
    
    
    @IBOutlet weak var highestBid: UILabel!
    
    
    
    var art: Art!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Configuring elements
        titleLabel.text = art.title
        captionLabel.text = art.caption

    }



}

