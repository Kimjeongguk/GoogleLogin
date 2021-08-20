//
//  ViewController.swift
//  GoogleLoginEx
//
//  Created by Jeongguk Kim on 2021/08/20.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var idLabel: UILabel!
    
    var loginBtn = GIDSignInButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        GIDSignIn.sharedInstance()?.presentingViewController = self // 로그인화면 불러오기
            GIDSignIn.sharedInstance()?.restorePreviousSignIn() // 자동로그인

    }

    @IBAction func login(_ sender: Any) {
        GIDSignIn.sharedInstance()?.signIn()
    }
    
    @IBAction func userInfo(_ sender: Any) {
        let user = AppDelegate.user
            
            self.idLabel.text = user?.userID
        print(user?.userID)
            self.emailLabel.text = user?.profile.email
        print(user?.profile.email)
            self.nameLabel.text = user?.profile.name
        print(user?.profile.name)
    }
}

