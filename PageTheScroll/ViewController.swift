//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Nano Degree on 13/11/2016.
//  Copyright © 2016 Nano Degree. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var contentWidth : CGFloat = 0.0
        
        for x in 0...2 {
            let image = UIImage(named:"icon\(x).png")
            
            let imageView = UIImageView(image:image)
            
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = view.frame.midX + view.frame.size.width * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x:newX - 75 , y : (view.frame.size.height/2) - 75,width : 150 , height: 150)
            
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
}

