//
//  DetailViewController.swift
//  SplitViewImage
//
//  Created by Hiếu Nguyễn on 8/10/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let data = detailItem {
            if let photoImage = imageView {
                photoImage.image = UIImage(named: data)
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
        scrollView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    
    
    
}
