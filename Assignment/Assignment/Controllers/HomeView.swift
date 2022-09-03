//
//  ViewController.swift
//  Assignment
//
//  Created by Rhytthm on 02/09/22.
//

import UIKit

class HomeView: UIViewController {

    // Initiating the Character Array as nil
    var Characters: [Character]? = nil
    let parser: Parser = Parser()
    
    @IBOutlet weak var tblCharacter: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblCharacter.delegate = self
        tblCharacter.dataSource = self
        
        parser.parserURL { (_characterData) in
            if(_characterData != nil){
                self.Characters = _characterData?.data
                
                // now Reloading table on the main thread
                DispatchQueue.main.async {
                    self.tblCharacter.reloadData()
                }
            }
        }
        
    }
        
}




