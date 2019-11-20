//
//  ViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Benjamin Stone on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
@IBOutlet weak var tableView: UITableView!
    
    var theMovies = [Movie]() {
        didSet {
            tableView.reloadData()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        updateUI()
    }

    func updateUI() {
        theMovies = Movie.allMovies
    }
    
    @IBAction func updateUIFromUnwindSegue(segue: UIStoryboardSegue) {
        print("prepare for segue...")
       
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        
        let someMovie = theMovies[indexPath.row]
        
        cell.textLabel?.text = someMovie.name
        cell.imageView?.image = UIImage(named: someMovie.posterImageName)
        return cell
    }
}

