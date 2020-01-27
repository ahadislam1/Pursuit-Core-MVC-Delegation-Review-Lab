//
//  ViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Benjamin Stone on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

protocol TextFontSizeDelegate: AnyObject {
    func updateFontSize(value: CGFloat)
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let movies = Movie.allMovies
    var fontSize: CGFloat = 17
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
        print(fontSize)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? DetailViewController {
            destVC.delegate = self
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Movie Cell", for: indexPath)
        cell.textLabel?.text = movies[indexPath.row].name
        cell.detailTextLabel?.text = "\(movies[indexPath.row].year)"
        cell.textLabel?.font = cell.textLabel?.font.withSize(fontSize)
        cell.detailTextLabel?.font = cell.textLabel?.font
        return cell
    }
    
    
}

extension ViewController: TextFontSizeDelegate {
    func updateFontSize(value: CGFloat) {
        fontSize = value
    }
}

