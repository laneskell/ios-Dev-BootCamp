//
//  ViewController.swift
//  insta-ios-kell
//
//  Created by Kell Lanes on 16/06/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableFeed: UITableView!
    
    let posts: [FeedPost] = [
        FeedPost(userAvatar: "avatar-1", userName: "Anna Marth", postImage: "story-1", likesCount: 34),
        FeedPost(userAvatar: "avatar-2", userName: "Stella Solf", postImage: "story-2", likesCount: 12),
        FeedPost(userAvatar: "avatar-3", userName: "Jonh Calle", postImage: "story-3", likesCount: 99),
        FeedPost(userAvatar: "avatar-4", userName: "Brian Mars", postImage: "story-4", likesCount: 65),
        FeedPost(userAvatar: "avatar-2", userName: "Steve Jobs", postImage: "story-1", likesCount: 20),
        FeedPost(userAvatar: "avatar-4", userName: "HeyBoy", postImage: "story-4", likesCount: 33),
        FeedPost(userAvatar: "avatar-3", userName: "Tim Wolf", postImage: "story-3", likesCount: 14),
        FeedPost(userAvatar: "avatar-1", userName: "Mario Nerd", postImage: "story-2", likesCount: 09),
        FeedPost(userAvatar: "avatar-4", userName: "Abner Simom", postImage: "story-1", likesCount: 122),
        FeedPost(userAvatar: "avatar-1", userName: "Anna Marth", postImage: "story-3", likesCount: 44)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableFeed.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: TableViewCell.identifier)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier) as! TableViewCell
            cell.configureCell(post: posts[indexPath.row])
            return cell
        }

   
}

