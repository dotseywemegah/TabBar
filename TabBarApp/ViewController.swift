//
//  ViewController.swift
//  TabBarApp
//
//  Created by HSD Wemegah on 7/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    let buton: UIButton = {
        let buton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        buton.setTitle("EXPLORE", for: .normal)
        buton.backgroundColor = .systemPink
        buton.setTitleColor(.black, for: .normal)
        
        return buton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(buton)
     buton.addTarget(self, action: #selector(didTapButon), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        buton.center = view.center
    }
    
    @objc func didTapButon(){
        //Create and present Tabbar Controller
        
       // let vc1 = FirstViewController()
        
        //Wrapping our ViewControllers in a Navigation Controller
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        let vc3 = UINavigationController(rootViewController: ThirdViewController())
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        let vc5 = UINavigationController(rootViewController: FithViewController())
        
        vc1.title = "Home"
        vc2.title = "Categories"
        vc3.title = "Shop"
        vc4.title = "Chat"
        vc5.title = "Profile"
        
        let tabBarVc = UITabBarController()
        
        tabBarVc.modalPresentationStyle = .fullScreen
        tabBarVc.setViewControllers([vc1,vc2,vc3,vc4,vc5], animated: false)
        
        
        guard let items = tabBarVc.tabBar.items else{
            return
        }
        
        let images = ["house","circle.grid.2x2","cart.circle","message","person"]
    
        for x in 0..<items.count{
            items[x].image = UIImage(systemName: images[x])
        }
        
        items[2].badgeValue = "1"
        present(tabBarVc, animated: true)
        
    }


}

//items[x].badgeValue = "1"

