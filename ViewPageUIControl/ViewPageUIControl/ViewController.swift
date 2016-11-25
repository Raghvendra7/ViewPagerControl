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
    
    var image1 = ["add_selected","list_selected","location_selected","search_selected"]
    var image2 = ["add_unselected","list_unselected","location_unselected","search_unselected"]
    @IBOutlet weak var pageLabel: UILabel!
    var tabView:ViewPagerControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createViewPager()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func createViewPager(){
        
        tabView = ViewPagerControl(images: image2, selectedImage: image1)
            //ViewPagerControl(items: data)
        tabView.type = .image
        tabView.frame = CGRect(x: 0, y: 64, width: ScreenConstant.width, height: 60)
        
        
        tabView.selectionIndicatorColor = UIColor.white
        //tabView.showSelectionIndication = false
        self.view.addSubview(tabView)
        
        tabView.indexChangedHandler = { index in
            
            self.segmentControl(index: index)
            
        }
    }
    
    
    func segmentControl(index:Int){
        //pageLabel.text = data[index]
        print(index)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabView.setSelectedSegmentIndex(1, animated: false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

