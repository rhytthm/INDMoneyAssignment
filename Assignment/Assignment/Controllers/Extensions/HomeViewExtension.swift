//
//  VCExtension.swift
//  Assignment
//
//  Created by Rhytthm on 03/09/22.
//

import UIKit

extension HomeView: UITableViewDelegate, UITableViewDataSource
{
    // Creating rows in the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.Characters?.count ?? 0
    }
   
    
    // Creating a single section in the table
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // Height of the row
        100
    }
    
    // Adding Data to the rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "characterCell") as! TableViewCell
        let characterHero = self.Characters?[indexPath.row]
        cell.setupCell(character: characterHero!)

        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // To deselect the cell once tapped
        tableView.deselectRow(at: indexPath, animated: true)
        // Initiating Detailed VC OnTap of cell
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DetailVC
        // Sending the data to DetailedVC
        vc?.imageURL = self.Characters?[indexPath.row].imgUrl ?? ""
        vc?.Title = self.Characters?[indexPath.row].title ?? ""
               navigationController?.pushViewController(vc!, animated: true)
        vc?.Description = self.Characters?[indexPath.row].summary ?? ""
       
    }
    
   
    
    
}
