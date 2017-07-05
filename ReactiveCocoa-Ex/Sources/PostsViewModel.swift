//
//  PostsViewModel.swift
//  ReactiveCocoa-Ex
//
//  Created by Harditya on 7/5/17.
//  Copyright © 2017 Freeskys. All rights reserved.
//

import Foundation
import ReactiveCocoa
import ReactiveSwift
import Result

struct PostsViewModel {
    
    static var shared = PostsViewModel()
    
    var (signal, observer) = Signal<[Post], NoError>.pipe()
    
    mutating func all() {
        let post1 = Post(userId: 1,
                         id: 1,
                         title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
                         body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto")
        let post2 = Post(userId: 1,
                         id: 2,
                         title: "qui est esse",
                         body: "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla")
        
        // Send data into streams
        var posts = [Post]()
        posts.append(post1)
        posts.append(post2)
        observer.send(value: posts)
    }
    
    func clear() {
        let posts = [Post]()
        observer.send(value: posts)
    }
    
}
