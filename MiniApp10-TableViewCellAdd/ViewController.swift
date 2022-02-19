//
//  ViewController.swift
//  MiniApp10-TableViewCellAdd
//
//  Created by 前田航汰 on 2022/02/18.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var tableView: UITableView!
    private var texts: [String] = []

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1")!
        cell.textLabel?.text = texts[indexPath.row]
        return cell
    }

    @IBAction func didTapAddButton(_ sender: Any) {
        if textField?.text?.isEmpty == false {
            texts.append(textField.text!)
            textField.text = ""
            tableView.reloadData()
        }
    }

    @IBAction func didTapRemoveButton(_ sender: Any) {
        if (0 < texts.count) {
            texts.removeLast()
            tableView.reloadData()
        }
    }
}
