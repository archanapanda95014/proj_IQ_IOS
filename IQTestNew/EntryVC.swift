//
//  EntryVC.swift
//  IQTestNew
//
//  Created by Archana Panda on 9/25/18.
//  Copyright © 2018 Archana Panda. All rights reserved.
//

import UIKit

class EntryVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func entryPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "entryToTabBarSegue", sender: sender)
    }
}
