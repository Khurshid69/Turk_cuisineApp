//
//  HomeViewController.swift
//  Turk_cuisineApp
//
//  Created by user on 14/12/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let data = DataLoader().foodDatas
    let itemFoods: Array<FoodDatas> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

                
        // datatableview
        DataLoader().load()
        let data = DataLoader().$foodDatas
        print(data)
        
        tableView.dataSource = self
        tableView.delegate = self
        loadView()
        
        
        
        
    }
}

extension HomeViewController:  UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemFoods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let itemFood = data[indexPath.row]
        let cell = Bundle.main.loadNibNamed("DataTableViewCell", owner: self, options: nil)?.first as! DataTableViewCell
        cell.imageFood.image = UIImage(named: itemFood.img!)
        cell.nameFood.text = itemFood.name
        
        
        
        return cell
    }
    
}
