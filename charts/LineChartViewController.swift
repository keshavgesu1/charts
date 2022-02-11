//
//  LineChartViewController.swift
//  charts
//
//  Created by Keshav Raj Kashyap on 11/02/22.
//

import UIKit
import Charts

class LineChartViewController: UIViewController {
    
    @IBOutlet weak var pieChartView: LineChartView!
    let employeeName = ["keshav","sahil","mahesh","raman","himanshu","ios","swift"]
    let employeeAge = [1,11,21,31,91,42,38]
    
    override func viewDidLoad() {
        super.viewDidLoad()
customizeChart(dataPoints: employeeName, values: employeeAge.map{ Double($0) })
        // Do any additional setup after loading the view.
    }
    
    func customizeChart(dataPoints: [String], values: [Double]) {
      // TO-DO: customize the chart here
        var dataEntries: [ChartDataEntry] = []
         for i in 0..<dataPoints.count {
             let dataEntry = ChartDataEntry(x: values[i], y: Double(i))
           dataEntries.append(dataEntry)
         }
        
         // 2. Set ChartDataSet
        let lineChartDataSet = LineChartDataSet(entries: dataEntries, label: nil)
        let lineChartData = LineChartData(dataSet: lineChartDataSet)
        pieChartView.data = lineChartData

    }

}
