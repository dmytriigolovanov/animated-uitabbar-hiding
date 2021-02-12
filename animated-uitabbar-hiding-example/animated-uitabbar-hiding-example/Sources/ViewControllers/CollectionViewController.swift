//
//  CollectionViewController.swift
//  animated-uitabbar-hiding-example
//
//  Created by Dmytrii Golovanov on 12.02.2021.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    // MARK: - UIScrollView Delegate
    
    override func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        let hidden = scrollView.panGestureRecognizer.translation(in: scrollView.superview).y < 0
        tabBarController?.setTabBarHidden(hidden, animated: true)
    }
    
    // MARK: - UICollectionView DataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        return cell
    }
}
