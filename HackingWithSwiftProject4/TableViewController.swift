//
//  TableViewController.swift
//  HackingWithSwiftProject4
//
//  Created by user208023 on 10/7/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    var websites = ["google.com", "netvasco.com.br", "apple.com", "hackingwithswift.com", "globo.com", "uol.com.br"]

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = websites[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = ViewController()
        
        vc.website = websites[indexPath.row]
        
        navigationController?.pushViewController(vc, animated: true)
    }



}
