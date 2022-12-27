//
//  ViewController.swift
//  TableView with CustomData
//
//  Created by Powerplay on 27/12/22.
//

import UIKit

class ViewController: UIViewController {

    var listOfData = [Data]()
    
    
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let data1 = Data(title: "Image 1", desc: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", count: 1, pic: "img4")
        listOfData.append(data1)
        
        let data2 = Data(title: "Image 2", desc: "when an unknown printer took a galley of type and scrambled it to make a type specimen book.", count: 2, pic: "img7")
        listOfData.append(data2)
        
        let data3 = Data(title: "Image 3", desc: "when an unknown printer took a galley of type and scrambled it to make a type specimen book.", count: 3, pic: "img9")
        listOfData.append(data3)
        
        let data4 = Data(title: "Image 4", desc: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", count: 2, pic: "img10")
        listOfData.append(data4)
        
        
        
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.countLabel.text = "\(indexPath.row + 1)"
        cell.titleLabel.text = listOfData[indexPath.row].title
        cell.descLabel.text = listOfData[indexPath.row].desc
        cell.imageLabel.image = UIImage(named: listOfData[indexPath.row].pic)
        return cell
    }
    
    
}
