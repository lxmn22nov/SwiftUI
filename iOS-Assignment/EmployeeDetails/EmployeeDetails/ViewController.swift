//
//  ViewController.swift
//  EmployeeDetails
//
//  Created by Laxman Singh Koranga on 14/07/2024.
//

/*
ViewController Setup:
01: TableView Setup: UITableView is added programmatically, frame is set to match the views bounds.
 02:
 
 */
import UIKit

class ViewController: UIViewController {

    var users: [User] = []
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        view.addSubview(tableView)
        tableView.frame = view.bounds
                
        fetchUsers()
    }
    
    // fetchUsers function makes a network request to the API, decodes the JSON response into an array of User objects and reloads the table view on the main thread.
    func fetchUsers() {
            guard let url = URL(string: "https://api.github.com/users") else { return }

            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let decodedResponse = try decoder.decode([User].self, from: data)
                        DispatchQueue.main.async {
                            self.users = decodedResponse
                            self.tableView.reloadData()
                        }
                    } catch {
                        print("Error decoding data: \(error)")
                    }
                } else if let error = error {
                    print("Network error: \(error)")
                }
            }.resume()
        }
}

// 01. returns number of users.
// 02. configures each cell to display the user login name and avatar image. fetchImage function is used to download the image asynchronously and update the cell's image view.
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let user = users[indexPath.row]
        cell.textLabel?.text = user.login
        
        // Load and display the image.
        if let url = URL(string: user.avatar_url) {
            fetchImage(from: url) { image in
                DispatchQueue.main.async {
                    cell.imageView?.image = image
                    cell.setNeedsLayout()
                }
            }
        }
        return cell
    }
    
    // perfoms an asynchronous network request to fetch the image data, converts it to a UIImage and passes it to the completion handler.
    func fetchImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data, let image = UIImage(data: data) {
                    completion(image)
                } else {
                    completion(nil)
                }
            }.resume()
        }
    }

