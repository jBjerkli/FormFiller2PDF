//
//  ViewController.swift
//  FormFiller2PDF
//
//  Created by John Andre Bjerkli on 04.07.2016.
//  Copyright © 2016 Tutorial. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testScrollView: UIScrollView!
    @IBOutlet weak var testContentView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func testPrintBtn(sender: AnyObject) {
        self.performSegueWithIdentifier("segueTestPDF", sender: self)
        
        if let PDFGarantiseddel = self.testScrollView
        {
            let snapshotter = ScrollViewSnapshotter()
            let data = snapshotter.PDFWithScrollView(PDFGarantiseddel)
            
            let manager = PDFManager()
            
            manager.writeData(data)
            
            NSNotificationCenter.defaultCenter().postNotificationName("com.mosheberman.pdf-saved", object: nil)
        }
        
    }

}

