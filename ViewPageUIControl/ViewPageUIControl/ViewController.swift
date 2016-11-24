//
//  ViewController.swift
//  ViewPageUIControl
//
//  Created by Raghvendra on 24/11/16.
//  Copyright © 2016 OneCorp. All rights reserved.
//

import UIKit

struct ScreenConstant {
    static var width     = UIScreen.main.bounds.size.width
    static var height    = UIScreen.main.bounds.size.height
    static var originX   = UIScreen.main.bounds.origin.x
    static var originY   = UIScreen.main.bounds.origin.y
}


class ViewController: UIViewController {
var data = ["One","Two","Three"]
    
    
    @IBOutlet weak var pageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createViewPager()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func createViewPager(){
        let tabView = ViewPagerControl(items: data)
        tabView.frame = CGRect(x: 0, y: 64, width: ScreenConstant.width, height: 60)
        tabView.selectionIndicatorColor = UIColor.blue
        self.view.addSubview(tabView)
        
        
        segmentControl(index: tabView.selectedSegmentIndex)
        tabView.indexChangedHandler = { index in
            
            self.segmentControl(index: index)
            
        }
    }
    
    
    func segmentControl(index:Int){
        pageLabel.text = data[index]
        print(index)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

