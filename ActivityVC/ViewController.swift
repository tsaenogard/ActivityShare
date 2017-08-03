//
//  ViewController.swift
//  ActivityVC
//
//  Created by Xcode on 2017/5/8.
//  Copyright © 2017年 wtfcompany. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 110, height: 40))
        button.center = self.view.center
        button.setTitle("分享", for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.layer.cornerRadius = 8.0
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.darkGray.cgColor
        button.addTarget(self, action: #selector(self.onButtonAction), for: .touchUpInside)
        self.view.addSubview(button)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onButtonAction() {
        var shareArray = [Any]()
        shareArray.append("share message by ActivityVC")
        if let image = UIImage(named: "ocean.jpg") {
            shareArray.append(image)
        }
        if let url = URL(string: "http://www.pcschool.com.tw") {
            shareArray.append(url)
        }
        let actinityVc = UIActivityViewController(activityItems: shareArray, applicationActivities: nil)
        self.present(actinityVc, animated: true, completion: nil)
    }


}

