//
//  ProfilePage.swift
//  cosas
//
//  Created by Ximena Puig on 13/4/23.
//

import UIKit

class ProfilePage: UIViewController{
    
    @IBOutlet weak var profilePicView: UIImageView!
    
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let refreshControl = UIRefreshControl()
    
    private var favs: [Art]? = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.allowsSelection = false

        collectionView.refreshControl = refreshControl
        refreshControl.addTarget(self, action: #selector(onPullToRefresh), for: .valueChanged)
        
       // profilePicView =
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        queryFavs()
    }
    
    private func queryFavs(completion: (() -> Void)? = nil) {
        // TODO: Pt 1 - Query Favs
        // https://github.com/parse-community/Parse-Swift/blob/3d4bb13acd7496a49b259e541928ad493219d363/ParseSwift.playground/Pages/2%20-%20Finding%20Objects.xcplaygroundpage/Contents.swift#L66

        // 1. Create a query to fetch Posts
        // 2. Any properties that are Parse objects are stored by reference in Parse DB and as such need to explicitly use `include_:)` to be included in query results.
        // 3. Sort the posts by descending order based on the created at date
        // 4. TODO: Pt 2 - Only include results created yesterday onwards
        // 5. TODO: Pt 2 - Limit max number of returned posts
        // Get the date for yesterday. Adding (-1) day is equivalent to subtracting a day.
        // NOTE: `Date()` is the date and time of "right now".
            
        let query = Art.query()
            .include("user")
            .order([.descending("createdAt")])

        // Find and return posts that meet query criteria (async)
        query.find { [weak self] result in
            switch result {
            case .success(let favs):
                // Update the local posts property with fetched posts
                self?.favs = favs
            case .failure(let error):
                self?.showAlert(description: error.localizedDescription)
            }

            // Call the completion handler (regardless of error or success, this will signal the query finished)
            // This is used to tell the pull-to-refresh control to stop refresshing
            completion?()
        }
    }
    
    @IBAction func onLogoutTapped(_ sender: Any) {
        showConfirmLogoutAlert()
    }
    
    @objc private func onPullToRefresh() {
        refreshControl.beginRefreshing()
        queryFavs { [weak self] in
            self?.refreshControl.endRefreshing()
        }
    }
    
    private func showConfirmLogoutAlert() {
        let alertController = UIAlertController(title: "Log out of \(User.current?.username ?? "current account")?", message: nil, preferredStyle: .alert)
        let logOutAction = UIAlertAction(title: "Log out", style: .destructive) { _ in
            NotificationCenter.default.post(name: Notification.Name("logout"), object: nil)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertController.addAction(logOutAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true)
    }
    
    private func showAlert(description: String? = nil) {
        let alertController = UIAlertController(title: "Oops...", message: "\(description ?? "Unknown error")", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true)
    }

}

extension ProfilePage: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        favs!.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavsCell", for: indexPath) as? FavsCell else {
            return UICollectionViewCell()
        }
        cell.configure(with: favs![indexPath.row])
        return cell
    }
    
}
extension ProfilePage: UICollectionViewDelegate{
}
