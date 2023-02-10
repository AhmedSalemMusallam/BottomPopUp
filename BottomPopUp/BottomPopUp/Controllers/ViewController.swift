//
//  ViewController.swift
//  BottomPopUp
//
//  Created by Ahmed Salem on 11/02/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        
    }

    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        fireBottomCustomViews()
    }
    

    func fireBottomCustomViews()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(identifier: "CustomPopUpViewController")

        if let sheet = secondVC.sheetPresentationController{

            sheet.preferredCornerRadius = 10

            sheet.detents = [.custom(resolver: {
                context in
                0.1 * context.maximumDetentValue
            }), .large()]

        }
        
        present(secondVC, animated: true)
    }
}

