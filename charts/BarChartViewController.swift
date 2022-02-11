//
//  BarChartViewController.swift
//  charts
//
//  Created by Keshav Raj Kashyap on 11/02/22.
//

import UIKit
import Charts

class BarChartViewController: UIViewController {
    
    @IBOutlet weak var barChartView: BarChartView!
    let employeeName = ["keshav","sahil","mahesh","raman","himanshu","ios","swift","steve jobs"]
    let employeeAge = [21,29,30,26,91,42,38,40]

    override func viewDidLoad() {
        super.viewDidLoad()
        setChart(dataPoints: employeeName, values: employeeAge.map { Double($0) })

        // Do any additional setup after loading the view.
    }
    
    func setChart(dataPoints: [String], values: [Double]) {
      barChartView.noDataText = "You need to provide data for the chart."
      
      var dataEntries: [BarChartDataEntry] = []
      
      for i in 0..<dataPoints.count {
        let dataEntry = BarChartDataEntry(x: Double(i), y: Double(values[i]))
        dataEntries.append(dataEntry)
      }
      
        let chartDataSet = BarChartDataSet(entries: dataEntries, label: "Bar Chart View")
      let chartData = BarChartData(dataSet: chartDataSet)
      barChartView.data = chartData
    }
}
