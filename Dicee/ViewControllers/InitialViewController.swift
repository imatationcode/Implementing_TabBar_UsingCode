//
//  ViewController.swift
//  Dicee
//
//  Created by Shivakumar Harijan on 13/05/24.
//

import UIKit

class InitialViewController: UIViewController {
    @IBOutlet weak var centerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func centerButtonTapped(_ sender: Any) {
        // Create and Present the tabbar
        let tabBarVC = UITabBarController()
        let vc1 = UINavigationController(rootViewController: FirestViewController())
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        let vc3 = UINavigationController(rootViewController: ThirdScreenViewController())
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        
        vc1.title = "Home"
        vc2.title = "Search"
        vc3.title = "Settings"
        vc4.title = "About"
        
                
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4], animated: false)
        tabBarVC.modalPresentationStyle = .fullScreen
        let tabBar = tabBarVC.tabBar
        
        //VIsibility of tab bar
//        tabBar.isTranslucent = false
//        tabBar.barTintColor = UIColor.white.withAlphaComponent(0.5)
        
        guard let item = tabBar.items else {
            return
        }
         
        let images = ["house", "magnifyingglass", "gear", "i.circle"]
        
        for i in 0 ..< item.count {
            item[i].image = UIImage(systemName: images[i])
        }
        
        let appearance = UITabBarAppearance()
//        appearance.backgroundColor = .red
        appearance.selectionIndicatorTintColor = .yellow
//        for i in item {
//            i.image = UIImage(systemName: "star.fill")
//
//        }
                
        
        present(tabBarVC, animated: true)
    }
    
}

//class FourthViewController: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .orange
//        title = "About"
//    }
//}


//        let customColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.7)
//        tabBar.barTintColor = .red
