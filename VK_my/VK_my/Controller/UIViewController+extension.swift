//
//  UIViewController+extension.swift
//  VK_my
//
//  Created by Кирилл Терновский on 13.05.2022.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showError(message: String) {
        let alertVC = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertVC.addAction(okAction)
        
        present(alertVC, animated: true, completion: nil)
    }
}
