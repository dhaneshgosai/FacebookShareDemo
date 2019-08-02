//
//  ViewController.swift
//  FacebookShareDemo
//
//  Created by Sheshnath on 02/08/19.
//  Copyright © 2019 Exp. All rights reserved.
//

import UIKit
import FBSDKShareKit

class ViewController: UIViewController , SharingDelegate {
    func sharer(_ sharer: Sharing, didCompleteWithResults results: [String : Any]) {
        print(results)
    }
    
    func sharer(_ sharer: Sharing, didFailWithError error: Error) {
        print(error)
    }
    
    func sharerDidCancel(_ sharer: Sharing) {
        print("Share Canceled")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func  btnFBShareClick (_ sender: AnyObject) {
        faceBookShare()
    }
    
    func faceBookShare()
    {
        
        let content = ShareLinkContent()
        content.contentURL = URL(string: "https://developers.facebook.com")!
//        FBSDKShareDialog.show(from: self, with: content, delegate: self)
        
//        let content:ShareLinkContent = ShareLinkContent.init(url: URL.init(string: "https://developers.facebook.com") ?? URL.init(fileURLWithPath: "https://developers.facebook.com"), quote: "Share This Content")
        let sharedialog = ShareDialog.init(fromViewController: self, content: content, delegate: self)
        sharedialog.show()
    }


}

