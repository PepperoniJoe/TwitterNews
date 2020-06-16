//
//  ViewController.swift
//  AnimatedLaunch
//
//  Created by Marcy Vernon on 5/31/20.
//  Copyright © 2020 Marcy Vernon. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    private var logo    = UIImageView()
    private var webView =  WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        createWebView()
        createImageView()
    }
    
    
    private func createWebView() {
        webView.backgroundColor = .systemBackground
        webView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)

        view.addSubview(webView)
        
        if let url = URL(string: K.company.website) {
            webView.load(URLRequest(url: url))
        } else {
            print(K.error[1])
        }
    }
    
    
    private func createImageView() {
        view.backgroundColor = .systemBackground
        if let image = UIImage(named: K.company.image) {
            logo.image = image
            logo.contentMode = .scaleAspectFill
            logo.frame = CGRect(x: -10, y: -10, width: self.view.frame.width + 20, height: self.view.frame.height + 20)
            view.addSubview(logo)
        } else {
            print(K.error[0])
        }
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateLogo()
    }
    
    private func animateLogo() {

        UIView.animate(withDuration: 1.0,
                       delay: 3.0,
                       options: .curveLinear,
                       animations: { self.expandLogo(expansion: 5000)},
                       completion: nil )
    }
    
    
    private func expandLogo(expansion: CGFloat) {
        logo.frame = CGRect(x: expansion * -1,
                                   y: expansion * -1,
                                   width: self.view.frame.width + (expansion * 2),
                                   height: self.view.frame.height + (expansion * 2))
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
