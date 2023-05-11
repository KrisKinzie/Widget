//
//  ViewController.swift
//  Widget
//
//  Created by Christian Kinzie on 9/30/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var sampleData = ["1","2","3","4"]
    var widget: [Widget] = []
    @IBOutlet weak var tableView: UITableView!
    var item1 = Widget(item: "Laptop", bin: 12142069, serialNumber: 46290)
    var item2 = Widget(item: "Laptop Bag", bin: 12242069, serialNumber: 42690)
    var item3 = Widget(item: "Pen", bin: 12342069, serialNumber: 69420)
    var item4 = Widget(item: "Pencil", bin: 12442069, serialNumber: 46920)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        widget.append(item1)
        widget.append(item2)
        widget.append(item3)
        widget.append(item4)    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        //        cell.textLabel?.text = sampleData[indexPath.row]
        cell.textLabel?.text = widget[indexPath.row].item
        cell.detailTextLabel?.text! = "\(widget[indexPath.row].bin), \(widget[indexPath.row].serialNumber)"
        return cell
    }
}

