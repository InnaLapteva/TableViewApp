//
//  MainTableViewController.swift
//  TableViewApp
//
//  Created by Manager on 14/10/2019.
//  Copyright © 2019 Manager. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var restrantNames = ["James", "Карбонара", "МыЕсть", "Сойка", "Планета Суши", "Гастроли", "А ты где?", "Рататуй", "Троекуров", "Вертикаль", "Бюро Находок"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restrantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = restrantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restrantNames[indexPath.row])
   


        return cell
    }
    

  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
