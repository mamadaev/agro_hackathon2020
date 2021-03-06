//
//  MainViewController.swift
//  marsianStrawberry
//
//  Created by Nikita Arutyunov on 12.12.2020.
//

import UIKit
import SwiftUI

class MainViewController: UIViewController {
    @IBOutlet weak var addGHButton: UIButton!
    @IBOutlet weak var addGraphicsTable: UIButton!
    @IBOutlet weak var addGHGraphicsComparasion: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        addGHButton.addTarget(self, action: #selector(revealAddGH), for: .touchUpInside)
        addGraphicsTable.addTarget(self, action: #selector(revealGHGraphicsTable), for: .touchUpInside)
        addGHGraphicsComparasion.addTarget(self, action: #selector(revealGHComparasionTable), for: .touchUpInside)
    }

    @objc func revealAddGH() {
        let addGHVC = CalculatorViewController()
        
        addGHVC.modalDismissDelegate = self
        
        navigationController?.present(addGHVC, animated: true)
    }

    @objc func revealGHGraphicsTable() {
        let addVC = GHTableViewController()

        navigationController?.pushViewController(addVC, animated: true)
    }

    @objc func revealGHComparasionTable() {
        let swiftUIView = ContentView()
        let childView = UIHostingController(rootView: swiftUIView)
        navigationController?.pushViewController(childView, animated: true)
    }
}
