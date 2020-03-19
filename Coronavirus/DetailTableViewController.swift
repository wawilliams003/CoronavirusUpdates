//
//  DetailTableViewController.swift
//  Coronavirus
//
//  Created by Iam Wayne on 2/28/20.
//  Copyright © 2020 Iam Wayne. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {

    
    var information : [Information] = [one, two, three, four, five, six, seven,eight,nine,ten,
    eleven, twelve, thirteen, fourteen,fifteen, sixteen, seventeen, eightteen,nineteen]
    
    var images = [UIImage(named: "blue-1"), UIImage(named: "blue-2"), UIImage(named: "blue-3"),
                  UIImage(named: "blue-4"),UIImage(named: "blue-5"),UIImage(named: "blue-6"),
                  UIImage(named: "blue-7"),UIImage(named: "yellow-1"),UIImage(named: "yellow-2"),
                  UIImage(named: "yellow-3"),UIImage(named: "yellow-4"),UIImage(named: "yellow-5")]
    
    var maskImages = [UIImage(named: "masks-1"),UIImage(named: "masks-2"),UIImage(named: "masks-3"),
    UIImage(named: "masks-4"),UIImage(named: "masks-5"),UIImage(named: "masks-6"),UIImage(named: "masks-7")]
    
    
    var advices = [advice1,advice2, advice3, advice4, advice5, advice6, advice7, advice8, advice9, advice10,advice11, advice12, advice13]
    
    
    var cellNumber: Int!
    var navTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = navTitle
        
        let imageNib = UINib(nibName: "ImagesTableViewCell", bundle: nil)
        tableView.register(imageNib, forCellReuseIdentifier: "imageCell")
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        switch cellNumber {
        case 0:
            return information.count
        case 1:
            return 1
            case 2:
            return 1
        default:
            return 1
        }
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       
        switch cellNumber {
        case 0:
            if information[section].opened == true {
                return 2
            }
            return 1
        
        case 1:
            return images.count
            
        case 2:
            return maskImages.count
            
        case 3:
            return advices.count
            
        default:
            return 0
        }
        
//        if information[section].opened == true {
//            return 2
//        }
//        return 1//information.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        switch cellNumber {
            
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            tableView.separatorStyle = .singleLine
            
            if indexPath.row == 0 {
                cell.textLabel?.numberOfLines = 0
                cell.textLabel?.text = information[indexPath.section].title
                cell.textLabel?.font = .systemFont(ofSize: 20, weight: .medium)
                cell.textLabel?.textColor = UIColor.systemRed.withAlphaComponent(1)
            } else {
                cell.textLabel?.numberOfLines = 0
                cell.textLabel?.text = information[indexPath.section].detail
                cell.textLabel?.font = .systemFont(ofSize: 17, weight: .regular)
                cell.textLabel?.textColor = UIColor.black.withAlphaComponent(0.8)
            }
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell") as! ImagesTableViewCell
            cell.cellImages.image = images[indexPath.row]
            tableView.separatorStyle = .none
            return cell
            
            case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell") as! ImagesTableViewCell
            cell.cellImages.image = maskImages[indexPath.row]
             tableView.separatorStyle = .none
           return cell
            
        case 3:
             let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
             let advice = advices[indexPath.row]
             
             cell.textLabel?.text = advice.title
            tableView.separatorStyle = .singleLine
            return cell
        default:
            return UITableViewCell()
        }
        
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch cellNumber {
        case 0, 3:
            return UITableView.automaticDimension
        default:
            return 400
        }
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //  information[indexPath.section].opened = information[indexPath.section].opened == false
        
        switch cellNumber {
        case 0:
            if information[indexPath.section].opened == true {
               // let cell = tableView.cellForRow(at: indexPath)
               // cell?.textLabel?.font = .systemFont(ofSize: 15, weight: .regular)
                information[indexPath.section].opened = false
                let sections = IndexSet(integer: indexPath.section)
                tableView.reloadSections(sections, with: .fade)
                
            } else {
                information[indexPath.section].opened = true
                let sections = IndexSet(integer: indexPath.section)
                tableView.reloadSections(sections, with: .fade)
            }
            
        case 1:
            print("image tapped")
            if let image = images[indexPath.row] {
                shareAlert(forImage: image)
            }
            
        case 2:
            if let image = maskImages[indexPath.row] {
                shareAlert(forImage: image)
            }
            
        case 3:
            gotoAdviceVC(withAdvice: advices[indexPath.row])
            
        default:
            break
        }
    }
       
    
        func shareAlert(forImage image: UIImage) {
             let alert = UIAlertController(title: "Select Option", message: nil, preferredStyle: .actionSheet)
            
            alert.addAction(UIAlertAction(title: "Share Photo", style: .default, handler: { (_) in
                UIImageWriteToSavedPhotosAlbum(image, self, nil, nil)
                
            }))
            
            alert.addAction(UIAlertAction(title: "Save Photo", style: .default, handler: { (_) in
                self.shareImage(forImage: image)
            }))
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            
            present(alert, animated: true, completion: nil)
            
        }
        
    
    
    func shareImage(forImage image: UIImage) {
        let text = "Hello I want to share this image with you"
        let activity = UIActivityViewController(activityItems: [image,text], applicationActivities: nil)
        present(activity, animated: true, completion: nil)
    }
    
    
    func gotoAdviceVC(withAdvice advice: AdviceForPublic){
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "AdviceViewController") as! AdviceViewController
        vc.advice = advice
        self.navigationController?.pushViewController(vc, animated: true)
    }

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
