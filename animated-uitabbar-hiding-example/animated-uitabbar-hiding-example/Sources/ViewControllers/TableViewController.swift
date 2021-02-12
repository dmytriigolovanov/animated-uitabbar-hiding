//
//  TableViewController.swift
//  animated-uitabbar-hiding-example
//
//  Created by Dmytrii Golovanov on 12.02.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    // MARK: - UIScrollView Delegate
    
    override func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        let hidden = scrollView.panGestureRecognizer.translation(in: scrollView.superview).y < 0
        tabBarController?.setTabBarHidden(hidden, animated: true)
    }
    
    // MARK: - UICollectionView DataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 30
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }
}
