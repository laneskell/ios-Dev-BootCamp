//
//  TableViewCell.swift
//  insta-ios-kell
//
//  Created by Kell Lanes on 16/06/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    static let identifier = "TableViewCell"
    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lbuserName: UILabel!
    @IBOutlet weak var imgPost: UIImageView!
    @IBOutlet weak var lbLikesCount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imgAvatar.layer.cornerRadius = imgAvatar.frame.size.width / 2
//        modo de fazer um border radius / arredondar o elemento.
    }
    
    func configureCell(post: FeedPost){
        imgAvatar.image = UIImage(named: post.userAvatar)
        lbuserName.text = post.userName
        imgPost.image = UIImage(named: post.postImage)
        lbLikesCount.text = "\(post.likesCount) Likes"
        
    }
    
}
