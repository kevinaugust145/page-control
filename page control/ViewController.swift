//
//  ViewController.swift
//  page control
//
//  Created by 洪宗燦 on 2024/7/14.
//

import UIKit

class ViewController: UIViewController {
    var currentPage=0
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        updatePageControl()
    }

    @IBAction func left(_ sender: Any) {
        if currentPage>0
        {
            currentPage-=1
            updatePageControl()
        }
    }
    @IBAction func right(_ sender: Any) {
        if currentPage < pageControl.numberOfPages
        {
            currentPage+=1
            pageControl.currentPage=currentPage
            updatePageControl()
        }
    }
    func updatePageControl()
    {
        pageControl.currentPage=currentPage
    }
}

