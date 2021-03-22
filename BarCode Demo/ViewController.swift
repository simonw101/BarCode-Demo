//
//  ViewController.swift
//  BarCode Demo
//
//  Created by Simon Wilson on 22/03/2021.
//

import UIKit
import MLKitBarcodeScanning
import MLKitVision

class ViewController: UIViewController{
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let barcodeOptions = BarcodeScannerOptions(formats: .all)
        
        let visionImage = VisionImage(image: UIImage())
        
        visionImage.orientation = .up
        
        let barcodeScanner = BarcodeScanner.barcodeScanner(options: barcodeOptions)
        
        barcodeScanner.process(visionImage) { (barcodes, error) in
            
            if error != nil {
                
                
                
            } else {
                
                if let barcodeArray = barcodes {
                    
                    for barcode in barcodeArray {
                        
                        print(barcode.rawData)
                        
                    }
                    
                }
                
            }
            
        }
       
        
        
    }


}

