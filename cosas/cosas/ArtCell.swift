//
//  ArtCell.swift
//  cosas
//
//  Created by Ximena Puig on 12/4/23.
//


import UIKit

class ArtCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var artImageView: UIImageView!
    
    @IBOutlet weak var captionLabel: UILabel!
    
    
    func configure(with art: Art) {
        //Configure Art Cell

        titleLabel.text = art.title
        // Image
        captionLabel.text = art.caption


    }

    override func prepareForReuse() {
        super.prepareForReuse()
        // TODO: Pt 1 - Cancel image data request

        // Reset image view image.
        artImageView.image = nil
    }
}

