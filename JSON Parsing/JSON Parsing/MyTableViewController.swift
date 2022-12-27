//
//  MyTableViewController.swift
//  JSON Parsing
//
//  Created by Powerplay on 27/12/22.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var dataList: [DataFile] = [DataFile]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataList[indexPath.row].title
        cell.detailTextLabel?.text = dataList[indexPath.row].desc
        return cell
    }

    func fetchData() {
        guard let fileLocation = Bundle.main.url(forResource: "dataFile", withExtension: "json")
        else {
            return
        }
        
        //for json decoding
        do {
            let data = try Data(contentsOf: fileLocation)
            let receivedData = try JSONDecoder().decode([DataFile].self, from: data)
            self.dataList = receivedData
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        catch {
            print("Error occured while debugging!")
        }
    }

}
