//
//  TipsTableViewController.swift
//  Coronavirus
//
//  Created by Iam Wayne on 2/28/20.
//  Copyright © 2020 Iam Wayne. All rights reserved.
//

import UIKit

class References: UIViewController {}



class TipsTableViewController: UITableViewController {

    var informations = [one, two, three, four]
    
    @IBOutlet weak var featureScrollView: UIScrollView!
    
       let featureImages = [#imageLiteral(resourceName: "blue-2"),#imageLiteral(resourceName: "masks-3"),#imageLiteral(resourceName: "masks-4"),#imageLiteral(resourceName: "yellow-4"),#imageLiteral(resourceName: "blue-4")]
    
    lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = self.featureImages.count
        pageControl.pageIndicatorTintColor = .systemTeal
        pageControl.currentPageIndicatorTintColor = .white
        
        return pageControl
    }()
    
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        featureScrollView.isPagingEnabled = true
        featureScrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(featureImages.count), height: 350)
        featureScrollView.showsHorizontalScrollIndicator = false
      
        featureScrollView.delegate = self
       // pageControl.center = featureScrollView.center
        
        loadFeatures()
        let rightBtn = UIBarButtonItem(image: UIImage(named:"info"), style: .plain, target: self, action: #selector(navBtnAction))
         self.navigationItem.rightBarButtonItem = rightBtn
        navigationItem.rightBarButtonItem?.tintColor = .darkGray
    }

    func loadFeatures() {
        
        for (index, image) in featureImages.enumerated() {
            if let featureView = Bundle.main.loadNibNamed("SectionHeader", owner: self, options: nil)?.first as? HeaderView {
                featureView.imageView.image = image
                
                featureScrollView.addSubview(featureView)
                featureView.frame.size.width = self.view.bounds.size.width
                featureView.frame.origin.x = CGFloat(index) * self.view.bounds.width
                
                view.insertSubview(pageControl, aboveSubview: featureView)
                pageControl.center = CGPoint(x: featureView.bounds.size.width / 2, y: featureView.bounds.size.height - 20)
                
            }
        }
    }
    
    
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == featureScrollView {
            let currentPage = featureScrollView.contentOffset.x / featureScrollView.bounds.size.width
            pageControl.currentPage = Int(currentPage)
        }
    }
    
    @objc func navBtnAction() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "References") as! References
        navigationController?.pushViewController(vc, animated: true)
    }

    
    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = informations[indexPath.row].title
        // Configure the cell...

        return cell
    }
    */

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell tapped")
        switch indexPath.section {
        case 0:
            gotoDetailVC(forNumber: 0, title: "Your questions answered")
        case 1:
            gotoDetailVC(forNumber: 1, title: "Protect yourself")
        case 2:
            gotoDetailVC(forNumber: 2, title: "How to use a mask")
        case 3:
            gotoDetailVC(forNumber: 3, title: "Advice for the public")
        default:
            break
        }
        
    }
    
    
    func gotoDetailVC(forNumber index:Int, title: String) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailTableViewController") as! DetailTableViewController
        storyboard.cellNumber = index
        storyboard.navTitle = title
        self.navigationController?.pushViewController(storyboard, animated: true)
    }
    

    
    
//    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 300
//    }
    //func gotoAdviceVC(forAdvice advice: AdviceForPublic)
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
