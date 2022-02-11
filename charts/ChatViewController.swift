//
//  ChatViewController.swift
//  charts
//
//  Created by Keshav Raj Kashyap on 11/02/22.
//

import UIKit
import Charts

class ChatViewController: UIViewController {
    @IBOutlet weak var pieChartView: PieChartView!
    
    let employeeName = ["keshav","sahil","mahesh","raman","himanshu","ios","swift","steve jobs"]
    let employeeAge = [21,29,30,26,91,42,38,40]

    override func viewDidLoad() {
        super.viewDidLoad()
        customizeChart(dataPoints: employeeName, values: employeeAge.map{Double(($0))})
        // Do any additional setup after loading the view.
    }
    
    func customizeChart(dataPoints: [String], values: [Double]) {
      // TO-DO: customize the chart here
        var dataEntries: [ChartDataEntry] = []
         for i in 0..<dataPoints.count {
           let dataEntry = PieChartDataEntry(value: values[i], label: dataPoints[i], data: dataPoints[i] as AnyObject)
           dataEntries.append(dataEntry)
         }
         // 2. Set ChartDataSet
        let pieChartDataSet = PieChartDataSet(entries: dataEntries, label: nil)
         pieChartDataSet.colors = colorsOfCharts(numbersOfColor: dataPoints.count)
         // 3. Set ChartData
         let pieChartData = PieChartData(dataSet: pieChartDataSet)
         let format = NumberFormatter()
         format.numberStyle = .none
         let formatter = DefaultValueFormatter(formatter: format)
         pieChartData.setValueFormatter(formatter)
         // 4. Assign it to the chart’s data
         pieChartView.data = pieChartData
    }
    
    private func colorsOfCharts(numbersOfColor: Int) -> [UIColor] {
      var colors: [UIColor] = []
      for _ in 0..<numbersOfColor {
        let red = Double(arc4random_uniform(256))
        let green = Double(arc4random_uniform(256))
        let blue = Double(arc4random_uniform(256))
        let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
        colors.append(color)
      }
      return colors
    }
 

}
