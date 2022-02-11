//
//  ViewController.swift
//  charts
//
//  Created by Keshav Raj Kashyap on 11/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var barButton: UIButton!
    @IBOutlet weak var lineChartBtn: UIButton!
    @IBOutlet weak var pieBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        barButton.layer.cornerRadius = 20
        lineChartBtn.layer.cornerRadius = 20
        pieBtn.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }

    @IBAction func pieChartButton(_ sender: Any) {
        if let pieChartViewController = self.storyboard?.instantiateViewController(withIdentifier: "ChatViewController")as? ChatViewController{
            self.navigationController?.pushViewController(pieChartViewController, animated: true)
        }
                
    }
    
    @IBAction func lineChartButton(_ sender: Any) {
        if let pieChartViewController = self.storyboard?.instantiateViewController(withIdentifier: "LineChartViewController")as? LineChartViewController{
            self.navigationController?.pushViewController(pieChartViewController, animated: true)
        }
    }
    @IBAction func BarChartButton(_ sender: Any) {
        if let pieChartViewController = self.storyboard?.instantiateViewController(withIdentifier: "BarChartViewController")as? BarChartViewController{
            self.navigationController?.pushViewController(pieChartViewController, animated: true)
        }
    }
}

