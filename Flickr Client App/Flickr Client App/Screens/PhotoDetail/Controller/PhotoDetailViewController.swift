//
//  PhotoDetailViewController.swift
//  Flickr Client App
//
//  Created by Ömer Faruk Başaran on 27.12.2022.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    var photo:Photo?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var ownerNameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Photo Detail"
        imageView.backgroundColor = .gray
        ownerImageView.backgroundColor = .darkGray
        ownerNameLabel.text = "Owner Name"
        descriptionLabel.text = "Description Label Description Label Description Label Description Label Description Label Description Label"
        
        ownerImageView.backgroundColor = .darkGray
        ownerImageView.layer.cornerRadius = 24.0
        ownerNameLabel.text = photo?.ownername
        
        NetworkManager.shared.fetchPhotos(with: photo?.buddyIconUrl) { data in
            self.ownerImageView.image = UIImage(data: data)
        }
        NetworkManager.shared.fetchPhotos(with: photo?.urlZ) { data in
            self.imageView.image = UIImage(data: data)
        }
        title = photo?.title
        
        descriptionLabel.text = photo?.photoDescription?.content
        
    }
    



}
