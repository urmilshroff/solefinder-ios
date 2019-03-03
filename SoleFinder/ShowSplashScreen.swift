//
//  ShowSplashScreen.swift
//  SoleFinder
//
//  Created by Vinay Kolwankar on 03/03/19.
//  Copyright © 2019 Vinay Kolwankar. All rights reserved.
//

import UIKit

class ShowSplashScreen: UIViewController {

    @IBOutlet weak var gifView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gifView.loadGif(name: "LoadingScreen")
        perform(#selector(ShowSplashScreen.showNavController), with: nil, afterDelay: 2.5)

        // Do any additional setup after loading the view.
    }
    
    @objc func showNavController() {
        performSegue(withIdentifier: "showSplashScreen", sender: self)
    }
    
}
